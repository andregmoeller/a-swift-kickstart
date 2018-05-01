let primes1: Array<Int>
let primes2: [Int]
primes2 = [2, 3, 5, 7]
let primeNames1: [String] = ["two", "three", "five", "seven"]
let primeNames2: [String] = ["two", "three", "five", "seven"]
primes2[2]





var drinkSizes1: [String] = []
var drinkSizes2 = [String]()
drinkSizes2 = ["Big", "Really Big", "Enormous"]
var drinkSizes3 = ["Big", "Really Big", "Enormous"]
var sales = Array(repeating: 0, count: 3)





var evens = [4, 10, 16]
evens.append(8)
evens += [12]
evens.insert(14, at: 1)
evens[3] = 100
evens[1...5] = [100, 200]
evens[...2] = [110, 120, 130]
evens[3...] = [210, 220]
evens.removeLast()
evens.removeFirst(2)
evens.remove(at: 1)
evens.removeAll()
if !evens.isEmpty{
    evens.removeLast()
}
evens
evens.count





var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino"]
for index in 0 ... coffeeDrinks.count - 1 {
    print(index + 1, coffeeDrinks[index])
}
print()
for index in 0 ..< coffeeDrinks.count {
    print(index + 1, coffeeDrinks[index])
}
print()
coffeeDrinks.append("Drip")
for kindOfDrink in coffeeDrinks {
    print(coffeeDrinks.index(of: kindOfDrink)! + 1, kindOfDrink)
}
print()
for (index, kindOfDrink) in coffeeDrinks.enumerated() {
    print(index + 1, kindOfDrink)
}
print()





var x = 7
var y = x
x = 5
x
y
var xNumbers = [0, 1, 2, 3]
var yNumbers = xNumbers
xNumbers[0] = 100
xNumbers
yNumbers





let badNumbers: [Any] = [0, 1, 2, "Hello"]
let badOne = badNumbers[1] as! Int
let badTwo = badNumbers[2] as! Int
let badThree = badOne + badTwo
if badNumbers[3] is Int {
    print("badNumbers[3] is Int")
}
let badHello = badNumbers[3] as? Int





let numbers1 = ["one": 1, "two": 2, "three": 3]
var moreNumbers1 : Dictionary<String, Int>
var moreNumbers2 : [String : Int]
numbers1["two"]
numbers1["four"]





var numbers2 : [String : Int] = Dictionary()
var numbers3 = [String : Int]()
numbers3["one"] = 8
numbers3["two"] = 2
numbers3["too"] = 3
numbers3.removeValue(forKey: "too")
numbers3.removeValue(forKey: "four")
if numbers3.keys.contains("one") {
    let one = numbers3["one"]!
    print(one)
}
for key in numbers3.keys {
    print(key, ":", numbers3[key]!)
}
numbers3.forEach { print($0, ":", $1) }
for (key, value) in numbers3 {
    print(key, ":", value)
}
numbers3.count
numbers3





var odds = Set<Int>()
for i in stride(from: 1, through: 10, by: 2) {
    odds.insert(i)
}
odds.remove(7)
odds.isEmpty
odds.contains(5)
odds.count
odds
var primes: Set = [2, 3, 5, 7, 11]
primes.isSubset(of: odds)
primes.isDisjoint(with: odds)
let union = primes.union(odds)
let intersection = primes.intersection(odds)
let difference = primes.subtracting(odds)
let symmetricDifference = primes.symmetricDifference(odds)
primes.formUnion(odds)
primes
for odd in odds {
    print(odd)
}





let vowels1 = "aeiou"
vowels1.contains("b")
vowels1.contains("e")
var vowels2 = "aeiou"
vowels2.append("y")
vowels2.removeLast()
vowels2
let title = "Swift Programmer"
func removeVowels1(from input: String) -> String {
    var result = ""
    for character in input {
        if !vowels2.contains(character) {
            result.append(character)
        }
    }
    return result
}
removeVowels1(from: title)
func filterVowels2(from input: String) -> String {
    return input.filter{!vowels2.contains($0)}
}
filterVowels2(from: title)
