
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Text("Tab Label 1")
                Image(systemName: "house")
            }
            MapView().tabItem {
                Text("Tab Label 2")
                Image(systemName: "map")
            }
            SettingsView().tabItem {
                Text("Tab Label 3")
                Image(systemName: "gear")
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("TODO: build home screen")
    }
}

struct MapView: View {
    var body: some View {
        Text("TODO: build map screen")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("TODO: build settings screen")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
