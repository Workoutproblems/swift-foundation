// Inheritance
class Appliance {
    var make: String
    var model: String
    
    init() {
        self.make = "default"
        self.model = "default"
    }
    func printDetails() {
        print("Make: \(self.make) \nModel: \(self.model)")
    }
}
