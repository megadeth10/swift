import UIKit

var greeting = "Hello, playground"


class FirstClass {
    private var name: String
    var text: String {
        get {
            return name
        }
        set {
            self.name = newValue
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func displayInfo() {
        print("FirstClass name: \(name)")
    }
}

let firstClass = FirstClass(name: "John")
firstClass.displayInfo()
