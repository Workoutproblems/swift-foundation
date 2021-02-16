
import SwiftUI

struct ContentView: View {
    @State private var theTask = Task(name: "Check all windows", isComplete: false, lastCompleted: nil)
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            
            ControlPannel(theTask: theTask)
        }
    }
}

struct ControlPannel: View {
    @State var theTask: Task
    
    var body: some View {
        HStack {
            Button(action: {
                theTask.isComplete = true
            }) {
                Text("Mark Complete")
            }.padding()
            
            Button(action: {
                theTask.isComplete = false
            }) {
                Text("Reset")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
