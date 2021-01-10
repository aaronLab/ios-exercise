import Foundation

protocol TestProtocol {
    var simpleValue: String { get }
    func simpleFunction(name: String) -> String
}

extension TestProtocol {
    func printValue() {
        print(simpleValue)
    }
}

class Test: TestProtocol {
    var simpleValue: String = "Simple Value from Protocol"
    
    func simpleFunction(name: String) -> String {
        return name
    }
    
}

let test = Test()

print(test.simpleFunction(name: "aaron"))
print(test.simpleValue)

test.simpleValue = "Hello"

print(test.simpleValue)

test.printValue()

func swapTwoIntegers(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var a = 10
var b = 20

swapTwoIntegers(&a, &b)

print(a, b)
