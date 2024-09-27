import Foundation
import AVFoundation
import os

class AudioRecorder: NSObject, ObservableObject, AVAudioRecorderDelegate {
    // MARK: - Properties
    var audioRecorder: AVAudioRecorder?
    @Published var isRecording = false
    @Published var recordedFileURL: URL?
    
    static let logger = Logger(subsystem: Bundle.main.bundleIdentifier ?? "LungTechApp", category: "AudioRecorder")
    
    // MARK: - Methods
    func startRecording() {
        AudioRecorder.logger.debug("AudioRecorder startRecording() called")
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playAndRecord, mode: .default)
            try audioSession.setActive(true)
            
            let settings = [
                AVFormatIDKey: Int(kAudioFormatLinearPCM),
                AVSampleRateKey: 16000,
                AVNumberOfChannelsKey: 1,
                AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
            ]
            
            let tempDir = FileManager.default.temporaryDirectory
            let fileName = UUID().uuidString + ".wav"
            let fileURL = tempDir.appendingPathComponent(fileName)
            audioRecorder = try AVAudioRecorder(url: fileURL, settings: settings)
            audioRecorder?.delegate = self
            audioRecorder?.record()
            isRecording = true
            AudioRecorder.logger.debug("Recording started, saving to \(fileURL.absoluteString)")
        } catch {
            AudioRecorder.logger.error("Failed to start recording: \(error.localizedDescription)")
            isRecording = false
        }
    }
    
    func stopRecording() {
        AudioRecorder.logger.debug("AudioRecorder stopRecording() called")
        self.audioRecorder?.stop()
        self.isRecording = false
        self.recordedFileURL = self.audioRecorder?.url  
        AudioRecorder.logger.debug("Recording stopped, file saved at \(self.recordedFileURL?.absoluteString ?? "unknown location")")
    }

    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        AudioRecorder.logger.debug("audioRecorderDidFinishRecording(successfully: \(flag)) called")
        if !flag {
            stopRecording()
        }
    }
}
