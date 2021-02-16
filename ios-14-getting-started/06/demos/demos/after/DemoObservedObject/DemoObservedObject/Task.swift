import Foundation

class Task : ObservableObject {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
    var name : String
    @Published var isComplete : Bool
    var lastCompleted : Date?
}
