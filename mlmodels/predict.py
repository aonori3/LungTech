# Takes in a raw/unprocessed cough recording
# Preprocesses it and converts it into a spectrogram
# The spectrogram is fed through the model
# THe model returns a prediction (COPD, asthma, COVID-19, healthy)

import librosa
import numpy as np
import os
from scipy.signal import butter, sosfiltfilt
from pydub import AudioSegment
import tensorflow as tf
from tensorflow.keras.models import load_model

# Load the model
# Replaced "LOCAL_MODEL_DIR" with file path to model
model = load_model(LOCAL_MODEL_DIR)

# Normalize the amplitude
def match_target_amplitude(sound, target_dBFS):
    change_in_dBFS = target_dBFS - sound.dBFS
    return sound.apply_gain(change_in_dBFS)

def normalize_amplitude(file_path, target_dBFS):
    sound = AudioSegment.from_file(file_path, "wav")
    normalized_sound = match_target_amplitude(sound, target_dBFS)
    normalized_file_path = f"/tmp/normalized_{os.path.basename(file_path)}"
    normalized_sound.export(normalized_file_path, format="wav")
    return normalized_file_path

# Replaced "FILE_PATH" with file path to 
normalized_file_path = normalize_amplitude(FILE_PATH, -30)

loaded_file, sr = librosa.load(normalized_file_path, sr=None)

# Low-pass filter
def butter_lowpass(cutoff, fs, order):
    normal_cutoff = cutoff / (0.5 * fs)
    sos = butter(order, normal_cutoff, btype="low", output="sos")
    return sos

def butter_lowpass_filtfilt(data, cutoff, fs, order):
    sos = butter_lowpass(cutoff, fs, order=order)
    y = sosfiltfilt(sos, data)
    return y

def get_low_pass(data, cutoff, fs, order):
    return [butter_lowpass_filtfilt(d, cutoff, fs, order) for d in data]

# Amplitude envelope
def amplitude_envelope(signal, frame_size, hop_length):
    return np.array([max(signal[i:i+frame_size]) for i in range(0, len(signal), hop_length)])

#Calculating time of first peak in cough recording (i.e. identifies beginning of cough sound)
def calculate_first_time(cough_values, t):
    return [i for i, j in zip(t, cough_values) if j > 0.018]

def get_first_time(low_passed_data):
    frame_size = 400
    hop_length = 210
    first_times = []

    for i in range(len(low_passed_data)):
        ae_data = amplitude_envelope(low_passed_data[i], frame_size, hop_length)
        t1 = librosa.frames_to_time(range(len(ae_data)), hop_length=hop_length)
        first_time = calculate_first_time(ae_data, t1)
        first_times.append(first_time[0] if first_time else 0)
    return first_times

lowpassed_file = get_low_pass([loaded_file], 2500, sr, 20)
first_time = get_first_time(lowpassed_file)

# Segment individual cough sound
def segment_signal(file_path, t1, location):
    sound = AudioSegment.from_wav(file_path)
    t1_ms = int(t1[0] * 1000)
    t2_ms = t1_ms + 330
    new_segment = sound[t1_ms:t2_ms]
    segment_file_path = os.path.join(location, "cough_segment.wav")
    new_segment.export(segment_file_path, format="wav")
    return segment_file_path

segmented_file_path = segment_signal(normalized_file_path, first_time, "/tmp")

# Convert normalized and segmented cough recording to spectrogram
def change_to_spec(file_path):
    y, sr = librosa.load(file_path, sr=347530)
    audio = librosa.feature.melspectrogram(y=y, sr=sr, n_mels=224)
    audio2 = np.stack((audio,)*3, axis=-1)
    return audio2

sound = change_to_spec(segmented_file_path)
sound = sound.reshape(1, 224, 224, 3)

prediction = model.predict(sound)

classes = np.argmax(prediction, axis=1)

if classes == 0:
    result = "Healthy"
elif classes == 1:
    result = "Asthma"
elif classes == 2:
    result = "COPD"
elif classes == 3:
    result = "COVID-19"

print (result)