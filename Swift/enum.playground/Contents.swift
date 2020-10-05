enum School: String {
    case primary = "Primary"
    case elementary = "Elementary School"
    case middle = "Middle School"
    case high = "High School"
    case college = "College"
    case university = "University"
    case graduate = "PhD Course"
}

var highestEducationLevel: School = .university
highestEducationLevel = .graduate

print("The highest education level is \(highestEducationLevel.rawValue).")

//

enum WeekDays: String {
    case mon = "Monday", tue = "Tuesday", wed = "Wednesday", thu = "Thursday", fri = "Friday", sat = "Saturday", sun = "Sunday"
}

let today: WeekDays = WeekDays.mon
print("Today is \(today.rawValue).")

//

enum PastaTaste {
    case cream, tomato
}

enum PizzaDough {
    case cheeseCrust, thin, original
}

enum PizzaTopping {
    case pepperoni, cheese, bacon
}

enum MainDish {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
}

var myDinner: MainDish = MainDish.pasta(taste: PastaTaste.cream)
myDinner = MainDish.pizza(dough: .original, topping: .cheese)

print(myDinner)
