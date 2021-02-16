
import SwiftUI

struct ContentView: View {
    @State private var theTask = Task(
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
            ControlPanel(theTask: self.$theTask)
        }
    }
}


struct ControlPanel: View {
    @Binding var theTask: Task
    var body: some View {
        HStack {
            Button(action: {
                // do something, (closure)
                theTask.isComplete = true
            }) {
                Text("Mark Complete")
            }.padding(.top)
            Button(action: {
                // do something, (closure)
                theTask.isComplete = false
            }) {
                Text("Reset Button")
            }.padding(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
