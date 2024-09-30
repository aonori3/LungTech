import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = LungTechViewModel()
    
    var body: some View {
        TabView {
            MainView()
                .environmentObject(viewModel)
                .tabItem {
                    Image(systemName: "lungs.fill")
                    Text("Home")
                }
        }
        .accentColor(ColorPalette.mainColor)
    }
}
