import SwiftUI
import UIKit
import UniformTypeIdentifiers

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

    let mainColor = Color(red: 0.2, green: 0.5, blue: 0.8)
    let secondaryColor = Color(red: 0.3, green: 0.7, blue: 0.5)

    var body: some View {
        TabView(selection: $selectedTab) {
            mainView
                .tabItem {
                    Image(systemName: "lungs.fill")
                    Text("Screener")
                }
                .tag(0)
            
            infoView
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("Info")
                }
                .tag(1)
        }
        .accentColor(mainColor)
    }
    
    var mainView: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [mainColor.opacity(0.1), secondaryColor.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 30) {
                        LungTechLogo()
                        
                        Text("Upload or record a cough sample for preliminary screening.")
                            .font(.body)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        HStack(spacing: 20) {
                            ActionButton(title: "Record", icon: "mic.fill", color: mainColor, action: startRecording)
                                .disabled(isRecording || isProcessing)
                            
                            ActionButton(title: "Upload", icon: "arrow.up.doc.fill", color: secondaryColor) {
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
                            Text("File processed: \(segmentedFileURL)")
                                .font(.caption)
                                .foregroundColor(secondaryColor)
                                .padding()
                        }
                        
                        Spacer()
                        
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
                DocumentPicker(selectedFileURL: $selectedFileURL)
                    .onDisappear(perform: processAudioFile)
            }
            .sheet(isPresented: $showingResult) {
                ResultView(onRetakeTest: {
                    showingResult = false
                    resetTest()
                }, mainColor: mainColor)
            }
            .alert(isPresented: $showingInfo) {
                Alert(
                    title: Text("About LungTech Screener"),
                    message: Text("This app uses AI to analyze cough sounds and provide a preliminary screening for respiratory conditions. Remember, this is not a diagnostic tool and should not replace professional medical advice."),
                    dismissButton: .default(Text("Got it!"))
                )
            }
        }
    }
    
    var infoView: some View {
        NavigationView {
            List {
                Section(header: Text("About COPD").foregroundColor(mainColor)) {
                    InfoRow(title: "What is COPD", value: "Chronic Obstructive Pulmonary Disease (COPD) is a chronic inflammatory lung disease that causes obstructed airflow from the lungs.")
                    InfoRow(title: "Symptoms", value: "Breathing difficulty, cough, mucus production and wheezing.")
                }
                
                Section(header: Text("Risk Factors").foregroundColor(mainColor)) {
                    InfoRow(title: "Smoking", value: "Primary risk factor for COPD")
                    InfoRow(title: "Air Pollution", value: "Long-term exposure can contribute to COPD")
                    InfoRow(title: "Occupational Exposure", value: "Dusts and chemicals in certain workplaces")
                    InfoRow(title: "Genetics", value: "Some genetic factors may increase risk")
                }
                
                Section(header: Text("When to See a Doctor").foregroundColor(mainColor)) {
                    InfoRow(title: "Consult a Professional", value: "If you experience persistent cough, shortness of breath, or any other symptoms of COPD.")
                }
            }
            .navigationTitle("COPD Information")
        }
    }
    
    func startRecording() {
        isRecording = true
        countdown = 5

        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            countdown -= 1
            if countdown == 0 {
                timer.invalidate()
                stopRecording()
            }
        }
    }

    func stopRecording() {
        isRecording = false
        isProcessing = true
        // Simulating processing time
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isProcessing = false
            showingResult = true
        }
    }

    func resetTest() {
        isRecording = false
        countdown = 5
        segmentedFileURL = nil
        isProcessing = false
    }

    func processAudioFile() {
        guard let selectedFileURL = selectedFileURL else { return }
        isProcessing = true
        
        // Your existing processAudioFile logic here
        // ...

        // For demonstration, we'll just simulate a delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.segmentedFileURL = "processed_\(selectedFileURL.lastPathComponent)"
            self.isProcessing = false
            self.showingResult = true
        }
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
        Button(action: action) {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 30))
                Text(title)
                    .font(.headline)
            }
            .frame(width: 150, height: 150)
            .background(color.opacity(0.1))
            .foregroundColor(color)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(color, lineWidth: 2)
            )
        }
    }
}

struct RecordingView: View {
    let countdown: Int
    
    var body: some View {
        VStack {
            Text("Recording: \(countdown)s")
                .font(.title2)
                .foregroundColor(.orange)
            
            Image(systemName: "waveform")
                .font(.system(size: 50))
                .foregroundColor(.orange)
                .opacity(Double.random(in: 0.5...1.0))  // Simulates animation
        }
        .padding()
        .background(Color.orange.opacity(0.1))
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
        Text("Disclaimer: This app is not a diagnostic tool. Please consult a healthcare professional for proper diagnosis and treatment.")
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
