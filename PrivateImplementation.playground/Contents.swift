//: Playground - noun: a place where people can play

import UIKit


class Thing {
    let a = 1
    let b = 2
    let c = 3
}

let myclass = Thing()

myclass.a
myclass.b
myclass.c


class Thung {
    public let a = 1
    internal let b = 2
    private let c = 3
}


//Swift has problems with this stuff but I will explain
let otherClass = Thung()

//Public stuff is showed out of your module
myclass.a
//Internal: by default is only showed inside your module
myclass.b
//Private: Only inside your class
myclass.c