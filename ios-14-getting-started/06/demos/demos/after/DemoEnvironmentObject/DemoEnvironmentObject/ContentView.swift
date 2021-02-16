
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var theTask : Task
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            
            IntermediateSubview1()
        }
    }
}

struct IntermediateSubview1 : View {
    var body: some View {
        IntermediateSubview2()
    }
}

struct IntermediateSubview2 : View {
    var body: some View {
        IntermediateSubview3()
    }
}

struct IntermediateSubview3 : View {
    var body: some View {
        IntermediateSubview4()
    }
}

struct IntermediateSubview4 : View {
    var body: some View {
        IntermediateSubview5()
    }
}

struct IntermediateSubview5 : View {
    var body: some View {
        ControlPannel()
    }
}

struct ControlPannel: View {
    @EnvironmentObject var theTask: Task
    
    var body: some View {
        if theTask.isComplete == false {
            Button(action: {
                theTask.isComplete = true
            }) {
                Text("Mark Complete")
            }.padding()
        } else {
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
        let previewTask = Task(name: "Check all windows", isComplete: false)
        
        ContentView()
            .environmentObject(previewTask)
    }
}
