
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: HStack {
                Circle()
                Text("Destination View")
            }
            .navigationTitle("Destination")
            ) { Text("Go to the destination") }
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
