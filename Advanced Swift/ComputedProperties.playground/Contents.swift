import Foundation

let pizzaInInches: Int = 16
var numberOfPeople: Int = 6
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    get {  // get: read-only, cannot write
        return pizzaInInches - 4
    }
}

var numberOfPizza: Int {
    get {
        let neededSlices = numberOfPeople * slicesPerPerson
        return neededSlices / numberOfSlices
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 6
print(numberOfPeople)
