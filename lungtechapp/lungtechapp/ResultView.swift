import SwiftUI
import UIKit
import UniformTypeIdentifiers

let mainColor = Color(red: 0.2, green: 0.5, blue: 0.8)
let secondaryColor = Color(red: 0.3, green: 0.7, blue: 0.5)

struct ResultView: View {
    var onRetakeTest: () -> Void
    @State private var showingInfoView = false
    
    let mainColor = Color(red: 0.2, green: 0.5, blue: 0.8)
    let secondaryColor = Color(red: 0.3, green: 0.7, blue: 0.5)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [mainColor.opacity(0.1), Color.green.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Your Result")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.primary)
                    .padding()
                
                ResultCircle(mainColor: mainColor)
                
                VStack(alignment: .leading, spacing: 15) {
                    ResultInfoRow(title: "Condition:", value: "COPD")
                    ResultInfoRow(title: "Next Steps:", value: "Consult a pulmonologist")
                    
                    HStack {
                        ResultInfoRow(title: "More Info about COPD:", value: "")
                        
                        Button(action: {
                            showingInfoView = true
                        }) {
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                                .background(mainColor)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                    }
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
            .sheet(isPresented: $showingInfoView) {
                infoView
            }
            var infoView: AnyView {
                return AnyView(
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
                )
            }
        }
    }
    
    struct ResultCircle: View {
        var mainColor: Color
        
        var body: some View {
            ZStack {
                Circle()
                    .stroke(mainColor, lineWidth: 4)
                    .frame(width: 200, height: 200)
                
                VStack {
                    Image(systemName: "lungs")
                        .font(.system(size: 60))
                        .foregroundColor(mainColor)
                    
                    Text("COPD")
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
            ResultView(onRetakeTest: {})
        }
    }
    
}
