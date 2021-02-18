
import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name : String
    var isComplete : Bool
    var lastCompleted : Date?
}
