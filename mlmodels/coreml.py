import tensorflow as tf
from tensorflow.keras.models import load_model
import coremltools as ct

def convert_to_coreml(model_path, output_path):
    model = load_model(model_path)
    input_shape = (1, 224, 224, 3)

    # Convert to Core ML
    mlmodel = ct.convert(
        model,
        inputs=[ct.ImageType(name="input_2", shape=input_shape, scale=1/255.0, bias=[0, 0, 0])],
        classifier_config=ct.ClassifierConfig(["healthy", "asthma", "copd", "covid"])
    )

    mlmodel.save(output_path)

if __name__ == "__main__":
    convert_to_coreml("path/model", "CoughClassifier.mlpackage")