struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
}

var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts": 100])
anotherTown.citizens.append("Walter")

var ghostTown = Town(name: "Ghosty Island", citizens: [], resources: ["Tunbleweed": 1])
print(ghostTown)
