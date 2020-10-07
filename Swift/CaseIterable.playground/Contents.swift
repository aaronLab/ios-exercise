enum School: String, CaseIterable {
    case primary = "Primary"
    case elementary = "Elementary School"
    case middle = "Middle School"
    case high = "High School"
    case college = "College"
    case university = "University"
    @available(iOS, obsoleted: 12.0)
    case graduate = "Master / PhD"
    
    static var allCases: [School] {
        let all: [School] = [
            .primary,
            .elementary,
            .middle,
            .high,
            .college,
            .university
        ]
        
        #if os(iOS)
        return all
        #else
        return all + [.graduate]
        #endif
    }
}

let allCases: [School] = School.allCases
print(allCases)


enum PastaTaste: CaseIterable {
    case cream, tomato
}

enum PizzaDough: CaseIterable {
    case cheeseCrust, thin, original
}

enum PizzaTopping: CaseIterable {
    case pepperoni, cheese, bacon
}

enum MainDish: CaseIterable {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
    
    static var allCases: [MainDish] {
        return PastaTaste.allCases.map(MainDish.pasta)
            + PizzaDough.allCases.reduce([]){ (result, dough) -> [MainDish] in
                result + PizzaTopping.allCases.map{ (topping) -> MainDish in
                    MainDish.pizza(dough: dough, topping: topping)
                }
            }
            + [true, false].map(MainDish.chicken)
            + [MainDish.rice]
    }
}

print(MainDish.allCases.count)
print(MainDish.allCases)
