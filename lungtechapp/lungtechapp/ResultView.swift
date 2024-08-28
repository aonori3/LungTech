import SwiftUI

struct ResultView: View {
    var onRetakeTest: () -> Void
    var mainColor: Color
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [mainColor.opacity(0.1), Color.green.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                Text("Your Result")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.primary)
                    .padding(.top, 50)
                
                ResultCircle(mainColor: mainColor)
                
                VStack(alignment: .leading, spacing: 15) {
                    ResultInfoRow(title: "Condition:", value: "COPD")
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
                .padding(.top, 20)
                
                Spacer()
            }
            .padding()
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
        ResultView(onRetakeTest: {}, mainColor: Color(red: 0.2, green: 0.5, blue: 0.8))
    }
}
