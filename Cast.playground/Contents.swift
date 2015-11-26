//: Playground - noun: a place where people can play

import UIKit

let thing:AnyObject = "I am a string"

let maybeStr = thing as? String
let withGutsStr = thing as! String //Con cojones o por cojones será un string

thing.dynamicType
maybeStr.dynamicType
withGutsStr.dynamicType


let maybeInt = thing as? Int
print(maybeInt)
//let withGutsInt = thing as! Int //Error!


//With ? return a nil and with ! Error if it could not be casted to the type

// ? => Careful
// ! => Careless