from scipy.signal import butter, lfilter, freqz, filtfilt, sosfiltfilt
import scipy.io.wavfile
import librosa
import librosa.display
from pydub import AudioSegment
import numpy as np
import glob 
import os

# Gets all file_locations in a directory
def get_file_locations(dir_location):
    return [i for i in glob.glob(dir_location + "/*.wav")]

# Loads all the files and returns a list
def load_files(file_locations):
    loaded_files = []
    for i in file_locations:
        file, sr = librosa.load(i)
        loaded_files.append(file)
        
    return loaded_files 

# Create separate folders for each category of cough recordings
# (i.e. independent folders that hold all the raw audio for COPD, asthma, COVID-19, healthy)
# Replace "file_path" with the file path to 
# This code need to be run four times in total, changing the file path each time
orig_audio = get_file_locations("file_path")

# Normalize the amplitudes
def match_target_amplitude(sound, target_dBFS):
    change_in_dBFS = target_dBFS - sound.dBFS
    return sound.apply_gain(change_in_dBFS)

def normalize(file_name, target_dBFS, location):
    sound = AudioSegment.from_file(file_name, "wav")
    normalized_sound = match_target_amplitude(sound, target_dBFS)
    normalized_sound.export(f"{location}/normalized_{os.path.basename(file_name)}", format="wav")

def normalize_amplitude(audio, location):
    for i in range (len(audio)):
        normalize(audio[i], -30, location)

# Replace "orig_copd" with "orig_asthma", "orig_healthy", and "orig_covid" one at a time
normalize_amplitude(orig_audio, "/Users/home/Documents/Respiratory Illness AI/recordings/temporary")

#Retrives the files locations of each recording in the file, whose amplitude has been normalized
normalized_audio = get_file_locations("/Users/home/Documents/Respiratory Illness AI/recordings/temporary")

#Loads the audio data and appends to a list called loaded_files
loaded_normalized_audio = load_files(normalized_audio)

#Applies a low pass filter
def butter_lowpass(cutoff, fs, order):
    normal_cutoff = cutoff / (0.5*fs)
    sos = butter(order, normal_cutoff,
                 btype="low", output="sos")
    return sos

def butter_lowpass_filtfilt(data, cutoff, fs, order):
    sos = butter_lowpass(cutoff, fs, order=order)
    y = sosfiltfilt(sos, data)
    return y

def get_low_pass(data, cutoff, fs, order):
    low_passed = []

    for i in range(len(data)):
        b = butter_lowpass_filtfilt(data[i], cutoff, fs, order)
        low_passed.append(b)
    
    return low_passed

# Getting amplitude envelope
def amplitude_envelope(signal, frame_size, hop_length):
    amplitude_envelope = []

    for i in range(0, len(signal), hop_length): 
        amplitude_envelope_current_frame = max(signal[i:i+frame_size]) 
        amplitude_envelope.append(amplitude_envelope_current_frame)
    
    return np.array(amplitude_envelope)

#Calculating time of first peak in cough recording (i.e. identifies beginning of cough sound)
def calculate_first_time(cough_values, t):
    segmentation_values = []
    for i, j in zip(t, cough_values):
        if j > 0.018:
            segmentation_values.append(i)
    return segmentation_values

def get_first_time(low_passed_data):
    first_times = []
    
    # Defines variables for amplitude envelope 
    frame_size = 400
    hop_length = 210
    

    for i in range(len(low_passed_data)):
        ae_data = amplitude_envelope(low_passed_data[i], frame_size, hop_length)
        
        frames1 = range(len(ae_data))
        t1 = librosa.frames_to_time(frames1, hop_length = hop_length)
        
        first_time = calculate_first_time(ae_data, t1)
        print(len(first_time), normalized_COVID[i])

        if len(first_time) == 0:
            first_times.append(0)
        else: 
            first_times.append(first_time[0])
        
    return first_times

cutoff = 2500
fs = 48000
order = 20

lowpassed_audio = get_low_pass(loaded_normalized_audio, cutoff, fs, order)
first_times_audio = get_first_time(lowpassed_audio)

# Segments the processed audio recordings into separate recordings, each containing one cough
# sound of standard length
def segment_signal(normalized_filenames, original_filenames, t1, location):
    for i in range(len(normalized_filenames)):
        time_1 = t1[i] * 1000
        time_2 = int(time_1) + 330
        sound = AudioSegment.from_wav(normalized_filenames[i])
        
        name = os.path.basename(original_filenames[i])
        
        new = sound[time_1:time_2]
        new.export(f"{location}/segmented_{name}", format="wav")

segment_signal(normalized_audio, 
               orig_audio, 
               first_times_audio, 
               "file_path_to_be_saved")
