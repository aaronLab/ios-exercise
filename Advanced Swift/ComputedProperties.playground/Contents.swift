import Foundation

let pizzaInInches: Int = 12

var numberOfSlices: Int {
    get {  // get: read-only, cannot write
        return pizzaInInches - 4
    } set {  // set: can write
        print("numberOfSlices now has a new value which is \(newValue)")
    }
}

numberOfSlices = 12
