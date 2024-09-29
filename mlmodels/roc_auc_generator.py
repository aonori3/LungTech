from tensorflow import keras
from tensorflow.keras.models import load_model
import pickle

from sklearn.metrics import roc_curve, roc_auc_score, auc

import numpy as np
from keras.utils import np_utils
import matplotlib.pyplot as plt
from itertools import cycle
import pandas as pd

# Loads the dataset
fh = open("file_path_to_dataset", 'rb')
dataset = pickle.load(fh)

# Function to split the dataset into training and validation sets
def train_val(dataset):
    input_shape = (224, 224, 3)
    train = dataset[:278]
    val = dataset[278:]
    X_train, y_train = zip(*train)
    X_val, y_val = zip(*val)

    X_train = np.array([x.reshape(input_shape) for x in X_train])
    X_val = np.array([x.reshape(input_shape) for x in X_val])

    y_train = np.array(np_utils.to_categorical(y_train, 4))
    y_val = np.array(np_utils.to_categorical(y_val, 4))
    
    return X_val, y_val

# Function to compute AUC (Area Under the Curve) values for ROC (Receiver Operating Characteristic) curves
def get_auc_values(y_val, y_score):
    fpr, tpr, roc_auc, thresholds = {}, {}, {}, {}
    
    for i in range(4):
        fpr[i], tpr[i], thresholds[i] = roc_curve(y_val[:,i], y_score[:,i], drop_intermediate=False)
        # maybe change to roc_auc_score
        roc_auc[i] = auc(fpr[i], tpr[i])
        
    return fpr, tpr, roc_auc

def reorder_list(lst):
    new = []
    
    for i in range(len(lst[0])):
        temp = []
        for group in lst: 
            temp.append(group[i])
        new.append(temp)
    
    return new

# Function to plot the ROC curves for each class
def graph_rocs(tprs, fprs, aucs):
    colors = cycle(["aqua", "darkorange", "darkgreen", "yellow"])
    diseases = ["healthy", "asthma", "copd", "covid"]
    lw = 2
    
    plt.figure(figsize=(5, 5))
    plt.axes().set_aspect('equal', 'datalim')
    
    for i, colour in zip(range(4), colors):
        mean_tpr = np.mean(tprs[i], axis=0)
        mean_tpr[-1] = 1.0
        # change denominator depending on kfold 
        mean_auc = sum(aucs[i])/5
        print(mean_auc)
        plt.plot(fpr[i], mean_tpr, color=colour,
         label=f'ROC class {diseases[i]} (AUC = {round(mean_auc, 2)})',lw=2, alpha=1)

    plt.plot([0,1],[0,1],linestyle = '--',lw = 2,color = 'black')
    plt.xlim([-0.01, 1.01])
    plt.ylim([-0.01, 1.01])
    plt.ylabel('True Positive Rate')
    plt.xlabel('False Positive Rate')
    plt.legend()
    plt.show()

# Initialize lists to store true positive rates (tprs), false positive rates (fprs), and AUC values (roc_aucs)
tprs, fprs, roc_aucs = [], [], []

model = load_model(compile = True)
# Split the dataset into validation data (X_val, y_val)
X_val, y_val = train_val(dataset)
# Use the model to predict scores for the validation data
y_score = model.predict(X_val)
fpr, tpr, roc_auc = get_auc_values(y_val, y_score)

tprs.append(tpr)
fprs.append(fpr)
roc_aucs.append(roc_auc)
    
tprs = reorder_list(tprs)
fprs = reorder_list(fprs)
roc_aucs = reorder_list(roc_aucs)

graph_rocs(tprs, fprs, roc_aucs)