protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if (isFemale) {
            print("The bird makes a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The bird flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let museum = FlyingMuseum()
let myPlane = Airplane()

museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myPlane)

print()
