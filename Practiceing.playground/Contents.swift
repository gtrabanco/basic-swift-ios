//: Playground - noun: a place where people can play

import UIKit

let firstName:String?
let secondName: String?


func name(firstName:String?, lastName:String?) -> String {
    guard firstName == nil && lastName == nil else {
        //If firstname and lastname are not null
        return "\(firstName!) \(lastName!)"
    }
    
    //If we do not have the firstName return lastName
    guard let firstName = firstName else {
        return firstName
    }
    
    guard let lastName = lastName else {
        return lastName
    }
    
    return ""
}

//name(nil, lastName: nil)
name("Josue", lastName: nil)
name(nil, lastName: "Gutierrez")
name("José", lastName: "Gutierrez")


