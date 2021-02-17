
import SwiftUI

struct ContentView: View {
    @StateObject private var theTask = Task(
        name: "Check all windows",
        isComplete: false,
        lastCompleted: nil)
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName:
                theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel(theTask: self.theTask)
        }
    }
}

struct ControlPanel: View {
    @ObservedObject var theTask: Task
    
    var body: some View {
        HStack {
            if theTask.isComplete == false {
                Button(action: {
                    // do something, (closure)
                    theTask.isComplete = true
                }) {
                    Text("Mark Complete")
                }.padding(.top)
            } else {
                Button(action: {
                    // do something, (closure)
                    theTask.isComplete = false
                }) {
                    Text("Reset Button")
                }.padding(.top)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
