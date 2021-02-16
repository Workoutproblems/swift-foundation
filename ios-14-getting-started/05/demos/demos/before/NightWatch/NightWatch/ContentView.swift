
import SwiftUI

let nightlyTasks = [
    "Check all windows",
    "Check all doors",
    "Check that the safe is locked",
    "Check the mailbox",
    "Inspect security cameras",
    "Clear ice from sidewalks",
    "Document \"strange and unusual\" occurrences"
]

let weeklyTasks = [
    "Check inside all vacant rooms",
    "Walk the perimeter of property"
]

let monthlyTasks = [
    "Test security alarm",
    "Test motion detectors",
    "Test smoke alarms"
]

struct ContentView: View {
    var body: some View {
        List {
            Section(header: HStack {
                Image(systemName: "moon.stars")
                Text("Nightly Tasks")
            }
            .font(.title3)) {
                ForEach(nightlyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }
            
            Section(header: HStack {
                Image(systemName: "sunset")
                Text("Weekly Tasks")
            }
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/))  {
                ForEach(weeklyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }
            
            Section(header: HStack {
                Image(systemName: "calendar")
                Text("Monthly Tasks")
            }
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/))  {
                ForEach(monthlyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }
        }.listStyle(GroupedListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
