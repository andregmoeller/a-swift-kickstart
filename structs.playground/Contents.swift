import Foundation

struct Vertex1 {
    let x, y: Double
    
    var magnitude: Double {
        return sqrt(x * x + y * y)
    }
    
    init(x: Double = 3.0, y: Double = 4.0) {
        self.x = x
        self.y = y
    }
    
    init(bothXandY: Double) {
        self.init(x: bothXandY, y: bothXandY)
    }
}
let pointSevenEight = Vertex1(x: 7.0, y: 8.0)
let pointThreeFour = Vertex1()
pointThreeFour.x
pointThreeFour.y
pointThreeFour.magnitude
let pointTwoFour = Vertex1(x: 2.0)
let pointThreeFive = Vertex1(y: 5.0)
let pointFiveFive = Vertex1(bothXandY: 5.0)

struct Vertex2 {
    let x, y: Double
    var magnitude: Double {
        get {
            return sqrt(x * x + y * y)
        }
    }
}
let point1 = Vertex2(x: 3.0, y: 4.0)
point1.magnitude

struct Vertex3 {
    var x, y: Double
    var magnitude: Double {
        get {
            return sqrt(x * x + y * y)
        }
        
        set {
            let multiplier = newValue / magnitude
            x *= multiplier
            y *= multiplier
        }
    }
}
var point2 = Vertex3(x: 3.0, y: 4.0)
point2.magnitude
point2.magnitude = 10
point2.magnitude
point2.x
point2.y

struct Vertex4 {
    private(set) var x, y: Double
    var magnitude: Double {
        get {
            return sqrt(x * x + y * y)
        }
        
        set {
            let multiplier = newValue / magnitude
            x *= multiplier
            y *= multiplier
        }
    }
}
var point3 = Vertex4(x: 3.0, y: 4.0)
point3.magnitude
point3.magnitude = 10
point3.magnitude
point3.x
point3.y

struct Vertex5 {
    private(set) var x: Double {
        willSet {
            count += 1
        }
        
        didSet {
            if x == 0 {
                x = oldValue
            }
        }
    }
    private(set) var y: Double {
        didSet {
            if y == 0 {
                y = oldValue
            }
        }
    }
    private(set) var count = 0
    
    var magnitude: Double {
        get {
            return sqrt(x * x + y * y)
        }
        set {
            let multiplier = newValue / magnitude
            x *= multiplier
            y *= multiplier
        }
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
var point4 = Vertex5(x: 3.0, y: 4.0)
point4.count
point4.magnitude = 10.0
point4.x
point4.y
point4.count
point4.magnitude = 0.0
point4.x
point4.y
point4.count

struct Vertex6 {
    private(set) var x, y: Double
    var magnitude: Double {
        get {
            return sqrt(x * x + y * y)
        }
        set {
            if newValue != 0 {
                let multiplier = newValue / magnitude
                x *= multiplier
                y *= multiplier
            }
        }
    }
}

struct Vertex7: CustomStringConvertible {
    let x, y: Double
    
    var description: String {
        return "(\(x), \(y))"
    }
}
let point5 = Vertex7(x: 3, y: 4)

struct Vertex8 {
    let x, y: Double
}
extension Vertex8: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}
extension Vertex8: Equatable{
    static func ==(lhs: Vertex8, rhs: Vertex8) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}
let point6 = Vertex8(x: 3, y: 4)
let pointTwoFive = Vertex8(x: 2, y: 5)
let anotherPointThreeFour = Vertex8(x: 3, y: 4)
let yetAnotherPointThreeFour = Vertex8(x: 3, y: 4)
point6 == pointTwoFive
anotherPointThreeFour == yetAnotherPointThreeFour

struct Vertex9 {
    var x: Double
    let y: Double
    
    func magnitude() -> Double {
        return sqrt(x * x + y * y)
    }
    
    mutating func moveHorizontally(by deltaX: Double) {
        x += deltaX
    }
}
extension Vertex9: Equatable{
    static func ==(lhs: Vertex9, rhs: Vertex9) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}
var point7 = Vertex9(x: 3, y: 4)
point7.magnitude()
point7.moveHorizontally(by: 3)
point7
