from tensorflow.keras.layers import Activation, Dense, Dropout, Flatten, AveragePooling2D, Input
from tensorflow.keras.models import Model, save_model, load_model
from keras.utils import np_utils
import librosa
import librosa.display
import numpy as np
import random
import matplotlib.pyplot as plt
import pickle

# Function to plot training and validation accuracy/loss over epochs
def plot_history(history, yrange):
    
    acc = history.history['accuracy']
    val_acc = history.history['val_accuracy']
    loss = history.history['loss']
    val_loss = history.history['val_loss']

    epochs = range(len(acc))

    # Plot the training and validation accuracy
    plt.plot(epochs, acc)
    plt.plot(epochs, val_acc)
    plt.title('Training and validation accuracy')
    plt.ylim(yrange)
    plt.legend(['train', 'test'], loc='upper left')
    
    plt.figure()

    # Plot the training and validation loss
    plt.plot(epochs, loss)
    plt.plot(epochs, val_loss)
    plt.title('Training and validation loss')
    plt.legend(['train', 'test'], loc='upper left')
    plt.show()

# Load the dataset
# Replace DATASET_NAME with saved dataset
fh = open(DATASET_NAME, 'rb')
dataset = pickle.load(fh)

input_shape = (224, 224, 3)

random.shuffle(dataset)

# Split the dataset into training, validation, and test sets
train = dataset[:125]
val = dataset[125:165]
test = dataset[165:]

X_train, y_train = zip(*train)
X_val, y_val = zip(*val)
X_test, y_test = zip(*test)

# Reshape the training, validation, and test data to match the input shape of the model
X_train = np.array([x.reshape(input_shape) for x in X_train])
X_val = np.array([x.reshape(input_shape) for x in X_val])
X_test = np.array([x.reshape(input_shape) for x in X_test])

# One-hot encode the labels for 4 classes (multi-class classification)
y_train = np.array(np_utils.to_categorical(y_train, 4))
y_val = np.array(np_utils.to_categorical(y_val, 4))
y_test = np.array(np_utils.to_categorical(y_test, 4))

dropout_rates = [0.5, 0.6, 0.7, 0.8]
activations = ['relu', 'sigmoid']

# Load a pre-trained model (VGG16, VGG19, ResNet50, etc.) without its top layers
baseModel = MODEL_TYPE(weights=None, include_top=False, input_shape=INPUT_SHAPE)

headModel = baseModel.output
headModel = AveragePooling2D(pool_size=(2, 2))(headModel)
headModel = Flatten(name="flatten")(headModel)

# Adding fully connected layers with dropout
headModel = Dense(512, activation=ACTIVATION)(headModel)
headModel = Dropout(DROPOUT_RATE)(headModel)

headModel = Dense(512, activation=ACTIVATION)(headModel)
headModel = Dropout(DROPOUT_RATE)(headModel)

headModel = Dense(512, activation=ACTIVATION)(headModel)
headModel = Dropout(DROPOUT_RATE)(headModel)

# Final output layer for 4 classes with softmax activation
headModel = Dense(4, activation="softmax")(headModel)

model = Model(inputs=baseModel.input, outputs=headModel)

for layer in baseModel.layers:
    layer.trainable = False

# Compile the model for multi-class classification (4 classes)
model.compile(optimizer="Adam", 
              loss='categorical_crossentropy', 
              metrics=['accuracy'])

history = model.fit(x=X_train,
          y=y_train,
          epochs=14,
          batch_size=128,
          validation_data=(X_val, y_val))

score = model.evaluate(x=X_test,
                     y=y_test)

print('Test loss:', score[0])
print('Test accuracy:', score[1])

plot_history(history, (0.4, 0.6))

# Saving the model
# Replace "NAME_OF_MODEL" with name of choosing
save_model(model, 
           NAME_OF_MODEL, 
           overwrite=True, 
           include_optimizer=True, 
           save_format=None, 
           signatures=None, options=None, save_traces=True)