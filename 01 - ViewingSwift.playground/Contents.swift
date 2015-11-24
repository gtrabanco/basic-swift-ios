/*
# Intro to Swift
*/

//import Foundation

//: vars & constants
var size : Float = 13.7
var name = "Anakin"

let secondName = "Skywalker"

name="Dart"
//secondName = "Vader" //: Error


//All is an object
Int.max
Double.abs(-56.378)


//: Type conversions
let answer = Float(45) //: Int is converted to double
answer / 7 //: Return a float
15 / 7 //: Return a integer
15 / Float(7) //: Return Float
Float(15) / Float(7) //: Return Float


//: TypeAlias new name to a existence type
//: Obama is an integer man so...
typealias Obama = Int

let foo : Obama = 10
foo


//: Basic Colections
// String
var swift = "String is a colection"
swift += "! Incredible!"

//Array
var words   = ["Tom", "Jerry", "Rick"]
var numbers = [1, 2, 3, 4]

//Dictionary
var numberNames = [1:"on", 2: "Two", 4.6:"hello"]

var total = ""
for noun in words {
    total = "\(total) \(noun)"
}


//Tuples, all them have a type
var pair = (1, "one", 2, 23)

pair.0 //Int
//pair.0 = "string" //Error
pair.0 = 3


//Functions
func myfunc(x:Int, y:Int) -> Int {
    return x * y
}

myfunc(7, y: 8)

//Function with different internal/external name
func otherFunc(to x:Int, adds y: Int) ->Int {
    return x + y
}

otherFunc(to: 5, adds: 6)

func sum(x:Int, with y: Int) ->Int {
    return x + y
}

sum(7, with: 8)

//Without external name
func multiply(x:Int, _ y: Int) -> Int {
    return x * y
}

multiply(5, 10)


//Optional params

func addSufflixTo(a:String, suffix s:String = "ingly") ->String {
    //return "\(a)\(s)" //This run ok
    return a + s //This run as well
}

addSufflixTo("accord")
addSufflixTo("Objective", suffix: " C")

