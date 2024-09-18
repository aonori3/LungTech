import SwiftUI
import UIKit
import UniformTypeIdentifiers

let mainColor = Color(red: 0.2, green: 0.5, blue: 0.8)
let secondaryColor = Color(red: 0.3, green: 0.7, blue: 0.5)


struct ResultView: View {
    var onRetakeTest: () -> Void
    @Binding var predictionResult: String
    @State private var showingInfoView = false
    
    let mainColor = Color(red: 0.2, green: 0.5, blue: 0.8)
    let secondaryColor = Color(red: 0.3, green: 0.7, blue: 0.5)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [mainColor.opacity(0.1), Color.green.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50) {
                Text("Your Result")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.primary)
                    .padding()
                
                ResultCircle(mainColor: mainColor, predictionResult: predictionResult)
                
                VStack(alignment: .leading, spacing: 15) {
                    ResultInfoRow(title: "Condition:", value: predictionResult)
                    ResultInfoRow(title: "Next Steps:", value: "Consult a pulmonologist")
                }
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(15)
                .shadow(radius: 5)
                
                Button(action: onRetakeTest) {
                    Text("Re-take Test")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(mainColor)
                        .cornerRadius(25)
                        .shadow(radius: 5)
                }
                .padding(.top, 10)
                
            }
            .padding()
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
    
    
    struct ResultView_Previews: PreviewProvider {
        static var previews: some View {
            ResultView(onRetakeTest: {}, predictionResult: .constant("COPD"))
        }
    }
}
