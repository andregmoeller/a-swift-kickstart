class Attendee1 {
    let name = "Daniel"
    let hometown = "Shaker Heights"
}
let person1 = Attendee1()
person1.name
person1.hometown

class Attendee2 {
    var name = "Daniel"
    let hometown = "Shaker Heights"
}
let person2 = Attendee2()
person2.name
person2.name = "Kimberli"
person2.name
let person3 = person2
person3.name
person3.name = "Maggie"
person2.name

class Attendee3 {
    let name: String
    let hometown: String
    
    init(name: String, hometown: String = "Cupertino") {
        self.name = name
        self.hometown = hometown
    }
    
    func nameBadge() -> String {
        return "Hello, I'm \(name) from \(hometown)."
    }
}
extension Attendee3: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}
let daniel1 = Attendee3(name: "Daniel", hometown: "Shaker Heights")
let kimberli1 = Attendee3(name: "Kimberli")
kimberli1.hometown

class TutorialAttendee: Attendee3 {
    let tutorial: String
    
    init(name: String, tutorial: String, hometown: String = "Cupertino"){
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}
let kimberli2 = TutorialAttendee(name: "Kimberli", tutorial: "Swiftiness")
kimberli2.name
kimberli2.hometown
kimberli2.tutorial
kimberli2.nameBadge()


class Attendee4 {
    let name: String
    let hometown: String?
    
    init(name: String, hometown: String? = nil) {
        self.name = name
        self.hometown = hometown
    }
    
    func nameBadge() -> String {
        return "Hello, I'm \(name)" + possibleLocation() + "."
    }
    
    private func possibleLocation() -> String {
        guard let place = hometown else {
            return ""
        }
        
        return " from \(place)"
    }
    
}
extension Attendee4: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}
let daniel2 = Attendee4(name: "Daniel", hometown: "Shaker Heights")
let kimberli3 = Attendee4(name: "Kimberli")

class Attendee5 {
    let name: String
    let hometown: String?
    
    init?(dictionary: AttendeeInput) {
        guard let name = dictionary[nameKey],
            let hometown = dictionary[hometownKey]
            else {
                return nil
        }
        self.name = name
        self.hometown = hometown
    }
    
    func nameBadge() -> String {
        return "Hello, I'm \(name)" + possibleLocation() + "."
    }
    
    private func possibleLocation() -> String {
        guard let place = hometown else {
            return ""
        }
        
        return " from \(place)"
    }
    
}
extension Attendee5: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}
typealias AttendeeInput = [String : String]
let nameKey = "name"
let hometownKey = "hometown"
let danielInput = [nameKey: "Daniel", hometownKey: "Shaker Heights"]
let kimberliInput = [nameKey: "Kimberli"]
let daniel3 = Attendee5(dictionary: danielInput)
let kimberli4 = Attendee5(dictionary: kimberliInput)
daniel3?.name
kimberli4?.name

var log = ""
var count = 1
func updateLog(with status: String) {
    log += "(\(count)) " + status + "\n"
    count += 1
}
class Location {
    let city: String
    
    init(city: String) {
        self.city = city
        updateLog(with: "Create Location")
    }
    
    deinit {
        updateLog(with: "Destroy Location")
    }
}
class Attendee6 {
    let name: String
    lazy var location = Location(city: "San Francisco")
    
    init(name: String) {
        self.name = name
        updateLog(with: "Create Attendee")
    }
    
    deinit {
        updateLog(with: "Destroy Attendee")
    }
}
var daniel4 = Attendee6(name: "Daniel")
log
daniel4.location.city
log
daniel4 = Attendee6(name: "Kimberli")
daniel4.location.city
log

struct Attendee7 {
    let name: String
    
    func nameBadge() -> String {
        return "Hi, I'm \(name)."
    }
}
struct TutorialAttendee2 {
    let tutorial: String
    private let attendee: Attendee7
    var name: String {
        return attendee.name
    }
    init(name: String, tutorial: String) {
        self.tutorial = tutorial
        self.attendee = Attendee7(name: name)
    }
    func nameBadge() -> String {
        return attendee.nameBadge() + " I'm taking \(tutorial)."
    }
}
extension TutorialAttendee2: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}
let daniel5 = Attendee7(name: "Daniel")
let kimberli5 = TutorialAttendee(name: "Kimberli", tutorial: "Swiftiness")
