
import SwiftUI

@main
struct DemoEnvironmentObjectApp: App {
    @StateObject private var task = Task(name: "Check all windows", isComplete: false)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(task)
        }
    }
}
