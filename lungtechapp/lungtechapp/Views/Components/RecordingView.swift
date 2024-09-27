import SwiftUI

struct RecordingView: View {
    let countdown: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Recording: \(countdown)s")
                .font(.title2)
                .foregroundColor(ColorPalette.mainColor)
            
            Image(systemName: "waveform")
                .font(.system(size: 50))
                .foregroundColor(ColorPalette.mainColor)
                .opacity(Double.random(in: 0.5...1.0))
        }
        .padding()
        .background(Color.white.opacity(0.1))
        .cornerRadius(15)
    }
}
