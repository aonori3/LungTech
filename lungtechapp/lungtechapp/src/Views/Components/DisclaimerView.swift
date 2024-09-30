import SwiftUI

struct DisclaimerView: View {
    var body: some View {
        Text("Disclaimer: This app is not a diagnostic tool, only an initial screener. Please consult a healthcare professional for proper diagnosis and treatment.")
            .font(.caption)
            .foregroundColor(.secondary)
            .multilineTextAlignment(.center)
            .padding()
    }
}
