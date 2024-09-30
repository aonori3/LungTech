from flask import Flask, request, jsonify
import librosa
import numpy as np
import os
from scipy.signal import butter, sosfiltfilt
from pydub import AudioSegment
import tensorflow as tf
import boto3
from keras.models import load_model
from tensorflow import keras
from tensorflow.keras.layers import Layer
from tensorflow.keras.utils import custom_object_scope
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

app = Flask(__name__)

S3_BUCKET = os.getenv('S3_BUCKET')
AWS_ACCESS_KEY_ID = os.getenv('AWS_ACCESS_KEY_ID')
AWS_SECRET_ACCESS_KEY = os.getenv('AWS_SECRET_ACCESS_KEY')

# S3 model keys and local paths
LOCAL_MODEL_DIR = '/tmp/VGG16_88-3'
variables_dir = os.path.join(LOCAL_MODEL_DIR, 'variables')

if not os.path.exists(LOCAL_MODEL_DIR):
    os.makedirs(LOCAL_MODEL_DIR, exist_ok=True)
    print(f"Created model directory at: {LOCAL_MODEL_DIR}")

def download_model_from_s3():
    s3 = boto3.client(
        's3',
        aws_access_key_id=AWS_ACCESS_KEY_ID,
        aws_secret_access_key=AWS_SECRET_ACCESS_KEY
    )

    if not os.path.exists(LOCAL_MODEL_DIR):
        os.makedirs(LOCAL_MODEL_DIR, exist_ok=True)
        print(f"Created model directory at: {LOCAL_MODEL_DIR}")

    if not os.path.exists(variables_dir):
        os.makedirs(variables_dir, exist_ok=True)

    files_to_download = [
        ('keras_metadata.pb', ''),
        ('saved_model.pb', ''),
        ('variables/variables.data-00000-of-00001', 'variables/'),
        ('variables/variables.index', 'variables/')
    ]

    for file_name, sub_dir in files_to_download:
        local_path = os.path.join(LOCAL_MODEL_DIR, sub_dir, os.path.basename(file_name))
        print(f"Downloading {file_name} from {S3_BUCKET}")
        s3.download_file(S3_BUCKET, file_name, local_path)
        if os.path.exists(local_path):
            print(f"{file_name} downloaded successfully.")
        else:
            print(f"Failed to download {file_name}.")

print("Listing the contents of /tmp:")
print(os.listdir('/tmp'))
if os.path.exists(LOCAL_MODEL_DIR):
    print(f"Listing the contents of {LOCAL_MODEL_DIR}:")
    print(os.listdir(LOCAL_MODEL_DIR))
else:
    print(f"{LOCAL_MODEL_DIR} directory not found.")

def load_model_from_file():
    return load_model(LOCAL_MODEL_DIR)

download_model_from_s3()
model = load_model_from_file()

@app.route('/')
def home():
    return "Welcome to the audio processing API!"

@app.route('/process-audio', methods=['POST'])
def process_audio():
    if 'file' not in request.files:
        return jsonify({'error': 'No file part'}), 400
    
    file = request.files['file']
    
    if file.filename == '':
        return jsonify({'error': 'No selected file'}), 400
    
    try:
        file_path = f"/tmp/{file.filename}"
        file.save(file_path)

        def match_target_amplitude(sound, target_dBFS):
            change_in_dBFS = target_dBFS - sound.dBFS
            return sound.apply_gain(change_in_dBFS)

        def normalize_amplitude(file_path, target_dBFS):
            sound = AudioSegment.from_file(file_path, "wav")
            normalized_sound = match_target_amplitude(sound, target_dBFS)
            normalized_file_path = f"/tmp/normalized_{os.path.basename(file_path)}"
            normalized_sound.export(normalized_file_path, format="wav")
            return normalized_file_path

        normalized_file_path = normalize_amplitude(file_path, -30)
        loaded_file, sr = librosa.load(normalized_file_path, sr=None)

        def butter_lowpass(cutoff, fs, order):
            normal_cutoff = cutoff / (0.5 * fs)
            return butter(order, normal_cutoff, btype="low", output="sos")

        def butter_lowpass_filtfilt(data, cutoff, fs, order):
            sos = butter_lowpass(cutoff, fs, order=order)
            return sosfiltfilt(sos, data)

        def get_low_pass(data, cutoff, fs, order):
            return [butter_lowpass_filtfilt(d, cutoff, fs, order) for d in data]

        def amplitude_envelope(signal, frame_size, hop_length):
            return np.array([max(signal[i:i+frame_size]) for i in range(0, len(signal), hop_length)])

        def calculate_first_time(cough_values, t):
            return [i for i, j in zip(t, cough_values) if j > 0.018]

        def get_first_time(low_passed_data):
            frame_size, hop_length = 400, 210
            first_times = []

            for data in low_passed_data:
                ae_data = amplitude_envelope(data, frame_size, hop_length)
                t1 = librosa.frames_to_time(range(len(ae_data)), hop_length=hop_length)
                first_time = calculate_first_time(ae_data, t1)
                first_times.append(first_time[0] if first_time else 0)
            
            return first_times

        lowpassed_file = get_low_pass([loaded_file], 2500, sr, 20)
        first_time = get_first_time(lowpassed_file)

        def segment_signal(file_path, t1, location):
            sound = AudioSegment.from_wav(file_path)
            t1_ms = int(t1[0] * 1000)
            t2_ms = t1_ms + 330
            new_segment = sound[t1_ms:t2_ms]
            segment_file_path = os.path.join(location, "cough_segment.wav")
            new_segment.export(segment_file_path, format="wav")
            return segment_file_path
        
        segmented_file_path = segment_signal(normalized_file_path, first_time, "/tmp")
        
        def changeToSpec(filePath):
            y, sr = librosa.load(filePath, sr=347530)
            audio = librosa.feature.melspectrogram(y=y, sr=sr, n_mels=224)
            return np.stack((audio,)*3, axis=-1)
        
        sound = changeToSpec(segmented_file_path)
        sound = sound.reshape(1, 224, 224, 3)

        infer = model.signatures["serving_default"]
        input_data = tf.convert_to_tensor(sound)
        output = infer(input_data)
        
        print(f"Output keys: {output.keys()}")

        prediction = output['output_0']

        classes = np.argmax(prediction, axis=1)
        
        result_map = {0: "Healthy", 1: "Asthma", 2: "COPD", 3: "COVID-19"}
        result = result_map.get(classes[0], "Unknown")

        return jsonify({'result': result})

    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5003, debug=True)