import SwiftUI
import UIKit
import UniformTypeIdentifiers
import AVFoundation

struct ContentView: View {
    @State private var isRecording = false
    @State private var showingResult = false
    @State private var countdown = 5
    @State private var showingDocumentPicker = false
    @State private var selectedFileURL: URL?
    @State private var segmentedFileURL: String?
    @State private var isProcessing = false
    @State private var showingInfo = false
    @State private var selectedTab = 0
    @State private var predictionResult: String = ""
    @State private var audioRecorder: AVAudioRecorder?
    @State private var audioFilename: URL?
    
    let mainColor = Color(red: 0.2, green: 0.5, blue: 0.8)
    let secondaryColor = Color(red: 0.3, green: 0.7, blue: 0.5)
    
    var body: some View {
        TabView(selection: $selectedTab) {
            mainView
                .tabItem {
                    Image(systemName: "lungs.fill")
                }
                .tag(0)
        }
        .accentColor(mainColor)
    }
    
    var mainView: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [mainColor.opacity(0.1), secondaryColor.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 40) {
                        LungTechLogo()
                        
                        Text("Upload or record cough sounds to begin the screening.")
                            .font(.body)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        HStack(spacing: 50) {
                            ActionButton(title: "Record", icon: "mic.fill", color: mainColor) {
                                startRecording()
                            }
                            .disabled(isRecording || isProcessing)
                            
                            ActionButton(title: "Upload", icon: "arrow.up.doc.fill", color: mainColor) {
                                showingDocumentPicker = true
                            }
                            .disabled(isRecording || isProcessing)
                        }
                        
                        if isRecording {
                            RecordingView(countdown: countdown)
                        }
                        
                        if isProcessing {
                            ProcessingView()
                        }
                        
                        if let segmentedFileURL = segmentedFileURL {
                            Text("Last File Processed: \(segmentedFileURL)")
                                .font(.caption)
                                .foregroundColor(secondaryColor)
                                .padding()
                        }
                        
                        DisclaimerView()
                    }
                    .padding()
                }
            }
            .navigationBarItems(trailing: Button(action: { showingInfo = true }) {
                Image(systemName: "questionmark.circle.fill")
                    .foregroundColor(mainColor)
            })
            .sheet(isPresented: $showingDocumentPicker) {
                DocumentPicker(selectedFileURL: $selectedFileURL, predictionResult: $predictionResult, showingResult: $showingResult)
            }
            .sheet(isPresented: $showingResult) {
                ResultView(onRetakeTest: {
                    showingResult = false
                    resetTest()
                }, predictionResult: $predictionResult)
            }
            .alert(isPresented: $showingInfo) {
                Alert(
                    title: Text("About LungTech Screener"),
                    message: Text("This app uses AI to analyze cough recordings and give a rough screening for lung diseases. This is not a diagnostic tool and should not substitute professional medical advice."),
                    dismissButton: .default(Text("I understand"))
                )
            }
        }
    }
    
    func startRecording() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playAndRecord, mode: .default)
            try audioSession.setActive(true)
            
            let documents = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            audioFilename = documents.appendingPathComponent("coughRecording.wav")
            
            let settings = [
                AVFormatIDKey: Int(kAudioFormatLinearPCM),
                AVSampleRateKey: 44100,
                AVNumberOfChannelsKey: 1,
                AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
            ]
            
            audioRecorder = try AVAudioRecorder(url: audioFilename!, settings: settings)
            audioRecorder?.record(forDuration: 5)  // Recording for 5 seconds
            
            isRecording = true
            countdown = 5
            
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                countdown -= 1
                if countdown == 0 {
                    timer.invalidate()
                    stopRecording()
                }
            }
        } catch {
            print("Recording failed")
        }
    }

    func stopRecording() {
        audioRecorder?.stop()
        isRecording = false
        isProcessing = true
        
        // Process the recorded file
        if let recordedFileURL = audioFilename {
            processAudioFile(at: recordedFileURL)
        }
    }
    
    func resetTest() {
        isRecording = false
        countdown = 5
        segmentedFileURL = nil
        isProcessing = false
    }
    
    func processAudioFile(at fileURL: URL) {
        isProcessing = true

        do {
            let audioData = try Data(contentsOf: fileURL)
            // Call the global uploadAndProcessAudioFile function
            uploadAndProcessAudioFile(audioData: audioData)
        } catch {
            print("Failed to load audio file")
        }
    }
    
    func uploadAndProcessAudioFile(audioData: Data) {
        let url = URL(string: "https://processaudio-c7a5eb77df32.herokuapp.com/process-audio")!

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let boundary = UUID().uuidString
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        
        var body = Data()
        body.append("--\(boundary)\r\n".data(using: .utf8)!)
        body.append("Content-Disposition: form-data; name=\"file\"; filename=\"audiofile.wav\"\r\n".data(using: .utf8)!)
        body.append("Content-Type: audio/wav\r\n\r\n".data(using: .utf8)!)
        body.append(audioData)
        body.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)

        request.httpBody = body

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error uploading file: \(error)")
                return
            }

            if let data = data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: String],
                       let result = json["result"] {
                        print("Prediction result: \(result)")
                        DispatchQueue.main.async {
                            self.predictionResult = result
                            self.isProcessing = false
                            self.showingResult = true
                        }
                    }
                } catch {
                    print("Failed to parse response: \(error)")
                }
            }
        }

        task.resume()
    }
}

struct LungTechLogo: View {
    var body: some View {
        HStack(spacing: 10) {
            Text("LungTech")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.primary)
        }
        .padding()
    }
}

struct ActionButton: View {
    let title: String
    let icon: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            VStack {
                Circle()
                    .fill(color.opacity(0.1)) // Background color with opacity
                    .frame(width: 120, height: 120) // Size of the button
                    .overlay(
                        Image(systemName: icon) // Icon inside the button
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60) // Size of the icon
                            .foregroundColor(color) // Icon color
                    )
                
                Text(title)
                    .font(.headline)
                    .foregroundColor(color)
                    .padding(.top, 10) // Space between icon and text
            }
        }
    }
}

struct RecordingView: View {
    let countdown: Int

    var body: some View {
        VStack (spacing: 10){
            Text("Recording: \(countdown)s")
                .font(.title2)
                .foregroundColor(.blue)

            Image(systemName: "waveform")
                .font(.system(size: 50))
                .foregroundColor(.blue)
                .opacity(Double.random(in: 0.5...1.0))  // Simulates animation
        }
        .padding()
        .background(Color.white.opacity(0.1))
        .cornerRadius(15)
    }
}

struct ProcessingView: View {
    var body: some View {
        VStack {
            ProgressView()
                .scaleEffect(1.5)
                .padding()
            Text("Processing...")
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.secondary.opacity(0.1))
        .cornerRadius(15)
    }
}

struct DisclaimerView: View {
    var body: some View {
        Text("Disclaimer: This app is not a diagnostic tool, only an intital screener. Please consult a healthcare professional for proper diagnosis and treatment.")
            .font(.caption)
            .foregroundColor(.secondary)
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct InfoRow: View {
    var title: String
    var value: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
                .foregroundColor(.primary)
            Text(value)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
