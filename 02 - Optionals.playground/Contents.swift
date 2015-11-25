//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//: Optionals: a package (not box) to store a nil
// ?
var newBoxStringOptional:String?
//var newStringNotOptional: String //Error Sponsored by Apple

//newBoxStringOptional = "Hello world!" //This run
//All go packaged in an optional the "Hello world!" and the first nil. They are not going alone like any other String or Nil (Nil is not valid in Swift)


//How to know if the package is empty
if newBoxStringOptional == nil {
    print("Do not get anything! IS EMPTY!");
}

print(newBoxStringOptional) //Here you can show that the string is in an Optional

//Desempaquetar (Spanish) or Unwrap (English)
//Two ways secure or unsecure (sometimes we want that warning!)

//Secure way
//You only get inside if the var is no nil
if let text = newBoxStringOptional {
    print("That you have inside was \(text)")
}
//here the same, just to watch you can use the same name
if let newBoxStringOptional = newBoxStringOptional {
    print("That you have inside was \(newBoxStringOptional)")
}


//Other secure way: Known as optional chaining (? after the var)
// is the same as "if let"
newBoxStringOptional = "Hello world!"
newBoxStringOptional?.hasPrefix("Hello") //If not nil run the method



//Unsecure and in the rought way (!)
print("Unsecure way \(newBoxStringOptional!) only runs if the var has value if not will throw an error (comment line 13 & 39 to watch it).")


//Unpackaging some vars
let url:String? = "http://www.gabi.com.esdf"

//If url is not null create NSUrl with unpackaged url
if let urlString = url, realURL = NSURL(string: urlString) {
    //If we are here urlString and realURL has no null values
}


