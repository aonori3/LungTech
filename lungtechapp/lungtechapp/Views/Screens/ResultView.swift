import SwiftUI

struct ResultView: View {
    var onRetakeTest: () -> Void
    @Binding var predictionResult: String
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [ColorPalette.mainColor.opacity(0.1), ColorPalette.secondaryColor.opacity(0.1)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50) {
                Text("Your Result")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.primary)
                    .padding()
                
                // Check if the result is available
                if !predictionResult.isEmpty {
                    ResultCircle(mainColor: ColorPalette.mainColor, predictionResult: predictionResult)
                    
                    VStack(alignment: .leading, spacing: 15) {
                        ResultInfoRow(title: "Condition:", value: predictionResult)
                        
                        ResultInfoRow(title: "Next Steps:", value: nextSteps(for: predictionResult))
                    }
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(15)
                } else {
                    Text("Result not available")
                        .font(.headline)
                        .foregroundColor(.secondary)
                }

                Button(action: onRetakeTest) {
                    Text("Re-take Test")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(ColorPalette.mainColor)
                        .cornerRadius(25)
                        
                }
                .padding(.top, 10)
            }
            .padding()
        }
    }
    // Function to determine next steps based on the prediction result
    func nextSteps(for result: String) -> String {
        switch result.lowercased() {
        case "healthy":
            return "No further action needed. Maintain a healthy lifestyle and continue regular check-ups."
        case "copd":
            return "Consult a pulmonologist for a comprehensive evaluation and management plan. Consider smoking cessation if applicable."
        case "asthma":
            return "Schedule an appointment with an allergist or pulmonologist to discuss treatment options and create an asthma action plan."
        case "covid":
            return "Isolate immediately and contact your healthcare provider or local health authorities for guidance on testing and treatment."
        default:
            return "Consult a healthcare professional for further evaluation and proper diagnosis."
        }
    }
}

struct ResultCircle: View {
    var mainColor: Color
    var predictionResult: String
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(mainColor, lineWidth: 4)
                .frame(width: 200, height: 200)
            
            VStack {
                Image(systemName: "lungs")
                    .font(.system(size: 60))
                    .foregroundColor(mainColor)
                
                Text(predictionResult)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.primary)
            }
        }
    }
}

struct ResultInfoRow: View {
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)
            Spacer()
            Text(value)
                .font(.body)
                .foregroundColor(.primary)
        }
    }
}

