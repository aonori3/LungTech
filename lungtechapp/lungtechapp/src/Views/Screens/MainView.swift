import SwiftUI

struct MainView: View {
    @EnvironmentObject private var viewModel: LungTechViewModel
    @State private var showingDocumentPicker = false
    @State private var showingInfo = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [ColorPalette.mainColor.opacity(0.1), ColorPalette.secondaryColor.opacity(0.1)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
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
                            ActionButton(title: "Record", icon: "mic.fill", color: ColorPalette.mainColor) {
                                viewModel.checkMicrophonePermission()
                            }
                            .disabled(viewModel.isRecording || viewModel.isProcessing)
                            
                            ActionButton(title: "Upload", icon: "arrow.up.doc.fill", color: ColorPalette.mainColor) {
                                showingDocumentPicker = true
                            }
                            .disabled(viewModel.isRecording || viewModel.isProcessing)
                        }
                        
                        if viewModel.isRecording {
                            RecordingView(countdown: viewModel.countdown)
                        }
                        
                        if viewModel.isProcessing {
                            ProcessingView()
                        }
                        
                        DisclaimerView()
                    }
                    .padding()
                }
            }
            .navigationBarItems(trailing: Button(action: {
                showingInfo = true
            }) {
                Image(systemName: "questionmark.circle.fill")
                    .foregroundColor(ColorPalette.mainColor)
            })
            .sheet(isPresented: $showingDocumentPicker) {
                DocumentPicker(selectedFileURL: $viewModel.selectedFileURL, uploadHandler: viewModel.uploadAndProcessAudioFile)
            }
            .sheet(isPresented: $viewModel.showingResult) {
                ResultView(onRetakeTest: {
                    viewModel.resetTest()
                }, predictionResult: $viewModel.predictionResult)
            }
            .alert(isPresented: $showingInfo) {
                Alert(
                    title: Text("About LungTech Screener"),
                    message: Text("This app uses AI to analyze cough recordings and provide a preliminary screening for lung diseases. This is not a diagnostic tool and should not substitute professional medical advice."),
                    dismissButton: .default(Text("I Understand"))
                )
            }
            .alert(isPresented: $viewModel.showErrorAlert) {
                Alert(title: Text("Error"), message: Text(viewModel.errorMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}
