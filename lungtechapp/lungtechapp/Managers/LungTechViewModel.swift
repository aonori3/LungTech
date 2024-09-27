import SwiftUI
import Combine
import AVFoundation
import os

class LungTechViewModel: ObservableObject {
    @Published var isRecording = false
    @Published var showingResult = false
    @Published var countdown = 5
    @Published var selectedFileURL: URL?
    @Published var isProcessing = false
    @Published var showErrorAlert = false
    @Published var errorMessage = ""
    @Published var predictionResult: String = ""
    
    private let audioRecorder = AudioRecorder()
    private let recordingManager = RecordingManager()
    private let audioProcessingManager = AudioProcessingManager()
    private let logger = Logger(subsystem: Bundle.main.bundleIdentifier ?? "LungTechApp", category: "LungTechViewModel")
    
    func checkMicrophonePermission() {
        recordingManager.checkMicrophonePermission { [weak self] result in
            switch result {
            case .success:
                self?.startRecording()
            case .failure(let error):
                self?.showErrorMessage(error.localizedDescription)
            }
        }
    }
    
    func startRecording() {
        logger.debug("startRecording() called")
        isRecording = true
        countdown = 5
        audioRecorder.startRecording()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            guard let self = self else { return }
            self.countdown -= 1
            self.logger.debug("Countdown: \(self.countdown)")
            if self.countdown == 0 {
                timer.invalidate()
                self.stopRecording()
            }
        }
    }
    
    func stopRecording() {
        logger.debug("stopRecording() called")
        isRecording = false
        isProcessing = true
        audioRecorder.stopRecording()
        
        guard let audioFileURL = audioRecorder.recordedFileURL else {
            logger.error("No audio file URL after recording")
            showErrorMessage("Recording failed.")
            isProcessing = false
            return
        }
        
        do {
            let audioData = try Data(contentsOf: audioFileURL)
            logger.debug("Loaded recorded audio file successfully")
            uploadAndProcessAudioFile(audioData: audioData)
        } catch {
            logger.error("Error loading recorded audio file: \(error.localizedDescription)")
            showErrorMessage("Error loading recorded audio file.")
            isProcessing = false
        }
    }
    
    func uploadAndProcessAudioFile(audioData: Data) {
        self.logger.debug("uploadAndProcessAudioFile() called with audio data size: \(audioData.count) bytes")
        
        isProcessing = true
        
        audioProcessingManager.processAudio(audioData: audioData) { [weak self] result in
            guard let self = self else {
                return
            }
            
            DispatchQueue.main.async {
                self.isProcessing = false
                
                switch result {
                case .success(let prediction):
                    self.logger.info("Audio processing successful. Prediction: \(prediction)")
                    self.predictionResult = prediction
                    self.showingResult = true
                    
                case .failure(let error):
                    self.logger.error("Audio processing failed: \(error.localizedDescription)")
                    self.showErrorMessage(error.localizedDescription)
                }
                
                self.logger.debug("Audio processing completed. isProcessing: \(self.isProcessing), showingResult: \(self.showingResult)")
            }
        }
    }
    
    func resetTest() {
        isRecording = false
        showingResult = false
        countdown = 5
        isProcessing = false
        predictionResult = ""
    }
    
    func showErrorMessage(_ message: String) {
        logger.error("Error occurred: \(message)")
        errorMessage = message
        showErrorAlert = true
    }
}
