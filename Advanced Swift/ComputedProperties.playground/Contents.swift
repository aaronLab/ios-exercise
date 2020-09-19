import Foundation

var pizzaInInches: Int = 10 {
    willSet {
    }
    didSet {
        if pizzaInInches >= 18 {
            print("Invalid size specified. Set to 18.")
            pizzaInInches = 18
        }
    }
}

pizzaInInches = 20
print(pizzaInInches)

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
