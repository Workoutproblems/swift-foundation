
import SwiftUI



struct ContentView: View {
    @State var theTask = Task(
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
            Button(action: {
                // do something, (closure)
                theTask.isComplete = true
            }) {
                Text("Mark Complete")
            }.padding(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
