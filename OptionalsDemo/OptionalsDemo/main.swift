
//let myOptional: String?
//
//myOptional = nil
//
//if let safeOptional = myOptional {
//    print(safeOptional)
//} else {
//    print("nil")
//}
//
//let text: String = myOptional ?? "I'm the default value"
//print(text)

struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

myOptional?.method()
