import Foundation

let pizzaInInches: Int = 12

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
        
    }
}

print(numberOfSlices)
