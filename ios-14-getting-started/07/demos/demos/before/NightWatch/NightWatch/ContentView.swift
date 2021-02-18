
import SwiftUI



struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    var body: some View {
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    
                    // Can I get both the task and its index in the array?
                    let taskIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.nightlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach(taskIndexPairs, id:\.0.id, content: {
                        task, taskIndex in
                        
                        // Can I hold a copy of the "dollar-signed" version of the nightWatchTasks instance?
                        let nightWatchTasksWrapper = $nightWatchTasks
                        
                        // Can I use that wrapper to make a Binding of task array?
                        let tasksBinding = nightWatchTasksWrapper.nightlyTasks
                        
                        // If I get a Task out of that Binding<[Task]> (task binding), will that element be binded to a Task
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        NavigationLink(
                            destination: DetailsView(task: theTaskBinding),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
                
//                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks"))  {
//                    ForEach(nightWatchTasks.weeklyTasks, content: {
//                        task in
//                        NavigationLink(
//                            destination: DetailsView(task: task),
//                            label: {
//                                TaskRow(task: task)
//                            })
//                    })
//                }
                
//                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks"))  {
//                    ForEach(nightWatchTasks.monthlyTasks, content: {
//                        task in
//                        NavigationLink(
//                            destination: DetailsView(task: task),
//                            label: {
//                                TaskRow(task: task)
//                            })
//                    })
//                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }
        .font(.title3)
    }
}

struct TaskRow: View {
    let task: Task
    
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        Group {
            ContentView(nightWatchTasks: nightWatchTasks)
            TaskRow(task: Task(name: "Test Task", isComplete: false, lastCompleted: nil))
                .previewLayout(.fixed(width: 300, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
        }
    }
}
