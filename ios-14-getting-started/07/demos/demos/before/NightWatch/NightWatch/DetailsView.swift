
import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "map")
                Text("Placeholder for task description")
            }
            Text(task.name)
            Divider()
            if verticalSizeClass == .regular {
                Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here.")
            }
            Divider()
            Button("Mark Complete"){
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailsView(task:
                Binding<Task>.constant(Task(name:
                "Test Task", isComplete: false,
                                        lastCompleted: nil)))
            DetailsView(task:
                            Binding<Task>.constant(Task(name:
                                                            "Test Task", isComplete: false,
                                                        lastCompleted: nil)))
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/667.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/375.0/*@END_MENU_TOKEN@*/))
        }
    }
}
