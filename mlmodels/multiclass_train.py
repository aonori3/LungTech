import glob
import os
import pickle
from itertools import cycle

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
from keras.utils import to_categorical
from sklearn.metrics import (
    accuracy_score, auc, classification_report, confusion_matrix,
    f1_score, multilabel_confusion_matrix, precision_score,
    recall_score, roc_auc_score, roc_curve
)
from sklearn.model_selection import StratifiedKFold
from tensorflow import keras
from tensorflow.keras.models import load_model

# Constants
INPUT_SHAPE = (224, 224, 3)
NUM_CLASSES = 4
DISEASES = ["healthy", "asthma", "copd", "covid"]
COLORS = ["aqua", "darkorange", "darkgreen", "yellow"]

# Load models and dataset
MODELS_PATH = '/Users/home/Documents/Respiratory Illness AI/k_fold/0_run/*/'
DATASET_PATH = "/Users/home/Documents/Respiratory Illness AI/datasets/official_datasets/asthma_copd_covid_healthy_224_224_3"

models = glob.glob(MODELS_PATH)

with open(DATASET_PATH, 'rb') as fh:
    dataset = pickle.load(fh)

def prepare_data(dataset):
    """Prepare training and validation data."""
    train, val = dataset[:278], dataset[278:]

    X_train, y_train = zip(*train)
    X_val, y_val = zip(*val)

    X_train = np.array([x.reshape(INPUT_SHAPE) for x in X_train])
    X_val = np.array([x.reshape(INPUT_SHAPE) for x in X_val])

    y_train = np.array(to_categorical(y_train, NUM_CLASSES))
    y_val = np.array(to_categorical(y_val, NUM_CLASSES))
    
    return X_val, y_val 

def calculate_auc_values(y_val, y_score):
    """Calculate AUC values for each class."""
    fpr, tpr, roc_auc = {}, {}, {}
    
    for i in range(NUM_CLASSES):
        fpr[i], tpr[i], _ = roc_curve(y_val[:,i], y_score[:,i], drop_intermediate=False)
        roc_auc[i] = auc(fpr[i], tpr[i])
        
    return fpr, tpr, roc_auc 

def transpose_list(lst):
    """Transpose a list of lists."""
    return list(map(list, zip(*lst)))

def plot_roc_curves(tprs, fprs, aucs):
    """Plot ROC curves for each class."""
    plt.figure(figsize=(8, 8))
    plt.axes().set_aspect('equal', 'datalim')
    
    for i, color in enumerate(COLORS):
        mean_tpr = np.mean(tprs[i], axis=0)
        mean_tpr[-1] = 1.0
        mean_auc = np.mean(aucs[i])
        plt.plot(fprs[i], mean_tpr, color=color,
                 label=f'ROC {DISEASES[i]} (AUC = {mean_auc:.2f})', lw=2, alpha=0.8)

    plt.plot([0,1], [0,1], linestyle='--', lw=2, color='gray', alpha=0.6)
    plt.xlim([-0.05, 1.05])
    plt.ylim([-0.05, 1.05])
    plt.xlabel('False Positive Rate')
    plt.ylabel('True Positive Rate')
    plt.title('Receiver Operating Characteristic (ROC) Curve')
    plt.legend(loc="lower right")
    plt.grid(True, linestyle=':', alpha=0.5)
    plt.tight_layout()
    plt.savefig('roc_curves.png', dpi=300, bbox_inches='tight')
    plt.show()

def main():
    tprs, fprs, roc_aucs = [], [], []

    for model_path in models:
        model = load_model(model_path, compile=True)
        X_val, y_val = prepare_data(dataset)
        y_score = model.predict(X_val)
        fpr, tpr, roc_auc = calculate_auc_values(y_val, y_score)
        
        tprs.append(tpr)
        fprs.append(fpr)
        roc_aucs.append(roc_auc)
            
    tprs = transpose_list(tprs)
    fprs = transpose_list(fprs)
    roc_aucs = transpose_list(roc_aucs)

    plot_roc_curves(tprs, fprs, roc_aucs)

if __name__ == "__main__":
    main()