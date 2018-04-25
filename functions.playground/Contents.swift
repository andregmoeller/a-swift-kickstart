let greeting = "Hello"
print(greeting)

func hello1() {
    print("Hello, World!")
}
hello1()





func hello2() -> String {
    return hello3(name: "World")
}

func hello3(name: String) -> String {
    //    return "Hello, " + name + "!"
    return "Hello, \(name)!"
}
hello2()
hello3(name: "my friend")

func hello4(name: String = "World") -> String {
    return "Hello, \(name)!"
}
hello4()
hello4(name: "my friend")

func hello5(_ name: String = "World") -> String {
    return "Hello, \(name)!"
}
hello5("my friend")

func hello6(to name: String = "World") -> String {
    return "Hello, \(name)!"
}
hello6(to: "my friend")

// https://swift.org/documentation/api-design-guidelines/





func hello7(name: String, city: String) -> String {
    return "Hello, \(name) who comes from \(city)!"
}
hello7(name: "my friend", city: "London")

func hello8(_ name: String  = "World", from city: String = "Cupertino") -> String {
    return "Hello, \(name) who comes from \(city)!"
}
hello8("my friend", from: "London")
hello8()





func hello9(peopleNamed people: String...) {
    people.forEach { person in
        print("Hello, \(person)!")
    }
}
hello9(peopleNamed: "Thing One", "Thing Two")

func hello10(peopleNamed people: String...) {
    if people.isEmpty {
        print("There's no one to greet.")
    } else {
        for person in people {
            print("Hello, \(person)!")
        }
    }
}
hello10()
hello10(peopleNamed: "Thing One", "Thing Two")

func hello10b(peopleNamed people: String...) {
    if people.isEmpty {
        print("There's no one to greet.")
    }
    
    for person in people {
        print("Hello, \(person)!")
    }
}

hello10b()
hello10b(peopleNamed: "Thing One", "Thing Two")

func hello11(peopleNamed people: String...) -> String {
    if people.isEmpty {
        return "There's no one to greet."
    }
    
    return people.map{"Hello, \($0)!"}.joined(separator: "\n")
}
hello11()
hello11(peopleNamed: "Thing One", "Thing Two")

func hello11b(peopleNamed people: String...) -> String {
    if people.isEmpty {
        return "There's no one to greet."
    }
    
    return people.reduce(""){$0 + "\nHello, " + $1 + "!"}
}
hello11b(peopleNamed: "Thing One", "Thing Two")





func hello12(peopleNamed people: String...) -> (Int, String) {
    return (people.count, people.map{"Hello, \($0)!"}.joined(separator: "\n"))
}
hello12(peopleNamed: "Thing One", "Thing Two")
hello12(peopleNamed: "Thing One", "Thing Two").0
hello12(peopleNamed: "Thing One", "Thing Two").1

func hello13(peopleNamed people: String...) -> (count: Int, greeting: String) {
    return (people.count, people.map{"Hello, \($0)!"}.joined(separator: "\n"))
}
hello13(peopleNamed: "Thing One", "Thing Two").count
hello13(peopleNamed: "Thing One", "Thing Two").greeting
