
struct Enemy {
    var health: Int
    var attackStrength: Int
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    mutating func takeDamage(amount: Int) {
        self.health -= amount
    }
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Skeleton: does \(self.attackStrength) damage.")
    }
}
