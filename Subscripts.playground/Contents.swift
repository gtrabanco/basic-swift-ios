//: Playground - noun: a place where people can play

import UIKit

//: Subscripts
class Numbers {
    let evens = [2,4,6,8]
    let odds  = [1,3,5,7,9]
    
    // Subscript to access evens
    subscript (evenAtIndex index: Int) -> Int {
        get {
            return evens[index]
        }
    }
    
    //Subscript to access odds
    subscript (oddAtIndex index: Int) ->Int {
        get {
            return odds[index]
        }
    }
}
let nums = Numbers()
nums[evenAtIndex: 0]
nums[oddAtIndex: 0]
//nums[0] //Error...






// A subscript can have more than one parameter

class Matrix {
    subscript(row row: Int, column column:Int) -> Int {
        get {
            //Whatever....
            
            return 21
        }
        
        set {
            //Whatever with "newValue" var
            // let myVar = newValue * 3
        }
    }
}

let nero = Matrix()
nero[row: 2, column: 1]
