//: Playground - noun: a place where people can play

import UIKit


//Throwing and handling errors
//The error is an enum that uses ErrorType protocol
enum ExampleErrors: ErrorType {
    case InvalidRange
    case ValueOutOfBound
    case Unknown
}

func foo(n:Int) throws -> Int {
    guard n >= 0 else {
        //Throw an error
        
        throw ExampleErrors.InvalidRange
        //return 0 //You will never get here
    }
    
    return n * n
}

//Try not generate and enviroment where you can launch an error like Java or C++
// just mark that you are calling a potentially error function
try! foo(3)

//Captureing errors
do {
    try foo(3)
    let result = try foo(-4) //Result is d
} catch ExampleErrors.InvalidRange {
    print("Error: Invalid Range")
} catch {
    print("Generic Error")
}


//: Initializers errors. You may suppose the rest with the knowledge you have gotten at this point.

class Thing {
    var size: Int = 0
    
    init(size: Int) throws {
        guard size > 0 else {
            throw ExampleErrors.ValueOutOfBound
        }
        
        self.size = size
    }
}

class Throng {
    var size:Int = 0
    
    init?(size:Int) { //Failable (Designated) Initializer (?)
        
        if size < 0 {
            return nil
        }
        
        self.size = size
    }
}








