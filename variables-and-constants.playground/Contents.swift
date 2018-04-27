let someone1: String = "Swift Programmer"

let someone2 = "Swift Programmer"

func hello1(peopleNamed people: String...) {
    people.forEach { print($0) }
}





let shouldBeRed: Bool
shouldBeRed = true
print(shouldBeRed)

let stringWithoutValue: String

if shouldBeRed {
    stringWithoutValue = "red"
} else {
    stringWithoutValue = "blue"
}
print(shouldBeRed)





var prime1: Int
prime1 = 5

var prime2 = 5
prime2 = 7





let f1: (String...) -> Void
f1 = hello1

let f2: (String...) -> ()
f2 = hello1
f2("Thing One")





func revenue1(for numberSold: Int) -> Double {
    return Double(numberSold) * 0.99 * 0.70
}
revenue1(for: 10)

/// Used to measure payments in United States dollars
typealias USDollars = Double
func revenue2(for numberSold: Int) -> USDollars {
    return USDollars(numberSold) * 0.99 * 0.70
}
revenue2(for: 10)

/// Number of individual copies sold
typealias Count = Int
func revenue3(for numberSold: Int) -> USDollars {
    return USDollars(numberSold) * 0.99 * 0.70
}
revenue3(for: 10)

/// Function that calculates the USDollars earned on a given count sold
typealias EarningsCalculator = (Count) -> USDollars
func earnings(for numbersSold: Count, using calculation: EarningsCalculator) -> USDollars {
    return calculation(numbersSold)
}
earnings(for: 10, using: revenue3)





let literalProduct = 5 * 3.7
let five = 5
let threePointSeven = 3.7
let doubleFiveFromInt = Double(five)





var name1: Optional<String>
var name2: String?
name2 = "Swifty"
print(name2!)
name2 = nil

if name2 != nil {
    print(name2!)
} else {
    print("name2 is nil")
}
print(name2 ?? "name2 is nil")
let validName = name2 ?? "name2 is nil"
print(validName)

if let validName = name2 {
    print(validName)
} else {
    print("There is no name to print")
}

func printName(name: String?) {
    guard let name = name else {
        print("There is no name to print")
        return
    }
   print(name)
}
printName(name: name2)
