import Cocoa

enum Color1 {
    case red, green
    case blue
}

enum Color2 {
    case red
    case green
    case blue
}

var crayon1 : Color2
crayon1 = .red

var crayon2 = Color2.red
crayon2 = .green
let paintBrush: Color2
paintBrush = .blue

func nsColor(from color: Color2) -> NSColor {
    switch color {
    case .red:
        return NSColor.red
    case .green:
        return NSColor.green
    case .blue:
        return NSColor.blue
    }
}
nsColor(from: .red)
nsColor(from: .green)
nsColor(from: .blue)

enum Color3 {
    case red
    case green
    case blue
    
    func nsColor() -> NSColor {
        switch self {
        case .red:
            return NSColor.red
        case .green:
            return NSColor.green
        case .blue:
            return NSColor.blue
        }
    }
}
let crayon3 = Color3.blue
crayon3.nsColor()

enum Color4 {
    case red
    case green
    case blue
    
    var nsColor : NSColor {
        switch self {
        case .red:
            return NSColor.red
        case .green:
            return NSColor.green
        case .blue:
            return NSColor.blue
        }
    }
}
let crayon4 = Color4.blue
crayon4.nsColor

enum Color5: String {
    case red
    case green
    case blue
}
let crayon5 = Color5.blue
crayon5.rawValue

enum Color6: String {
    case red = "Maraschino"
    case green
    case blue = "Blueberry"
}
let crayon6 = Color6.blue
crayon6.rawValue
let marker = Color6(rawValue: "Blueberry")

enum Color7 : Int {
    case red
    case green
    case blue
}
let crayon7 = Color7.green
crayon7.rawValue

enum Color8 : Int {
    case yellow = 1
    case green
    case blue = 4
    case purple
    var hue : CGFloat {
        return CGFloat(rawValue)/3
    }
    
    var nsColor : NSColor {
        return NSColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
    }
}
let crayon8 = Color8.green
crayon8.nsColor

enum Color9 : CGFloat {
    case yellow = 0.166667
    case green  = 0.333333
    case blue   = 0.666667
    case purple = 0.833333
    
    var nsColor : NSColor {
        return NSColor(hue: rawValue, saturation: 1, brightness: 1, alpha: 1)
    }
}
let crayon9 = Color9.green
crayon9.rawValue
crayon9.nsColor

enum PrimaryColor : String {
    case red
    case yellow
    case blue
}

enum Desktop {
    case black
    case white
    case color (PrimaryColor)
    
    func isRed() -> Bool {
        if case .color(let primaryColor) = self, primaryColor == .red {
            return true
        }
        return false
    }
}


extension Desktop : CustomStringConvertible {
    var description: String {
        let colorString : String
        switch  self {
        case .color(let primaryColor):
            colorString = primaryColor.rawValue
        default:
            colorString = "black"
        }
        return colorString
    }
}

let blackBackground = Desktop.black
let whiteBackground = Desktop.white
let redBackground = Desktop.color(PrimaryColor.red)
let yellowBackground = Desktop.color(.yellow)

let backgrounds = [Desktop.color(.yellow), .black,
                   .color(.red), .color(.blue)]
backgrounds[0].isRed()
backgrounds[1].isRed()
backgrounds[2].isRed()
backgrounds[3].isRed()
backgrounds[3].description

struct ColorsWeLove: OptionSet {
    let rawValue: Int
    static let red = ColorsWeLove(rawValue: 1)
    static let green = ColorsWeLove(rawValue: 2)
    static let blue = ColorsWeLove(rawValue: 4)
}


let noColors : ColorsWeLove = []
noColors.contains(.red)
noColors.isEmpty

var twoColors: ColorsWeLove = [.red, .blue]
twoColors.contains(.red)
twoColors.contains(.green)
