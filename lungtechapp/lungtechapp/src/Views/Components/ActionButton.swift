import SwiftUI

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
                    .fill(color.opacity(0.1))
                    .frame(width: 120, height: 120)
                    .overlay(
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .foregroundColor(color)
                    )
                Text(title)
                    .font(.headline)
                    .foregroundColor(color)
                    .padding(.top, 10)
            }
        }
    }
}
