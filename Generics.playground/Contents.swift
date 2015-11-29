//: Playground - noun: a place where people can play

import UIKit


func f<T:P, U:P, V:P>(a: T, b: U) -> V {
    return (a+b) * (a-b)
}


//Generics

/*
func swap(inout a: Int, inout b: Int) {
    let aux = a
    a = b
    b = aux
}

var n = 2
var m = 3
swap(&n, b: &m)
print(n)
print(m)

*/

//Here we can not use floats (for example) so we need a Generic
// Converting swap in a generic o parametric function (a theme for a function)
func swap<T>(inout a:T, inout b: T) {
    // <> And a letter inside is typical to use the "T"
    
    let aux = a
    a = b
    b = aux
}


var a = "Hello"
var b = "World"

swap(&a, b: &b)

(a,b)



// Generic Class

/*
//First the example we will convert
struct Pair {
    let x:Int
    let y:Int
}

let point = Pair(x: 7, y: 8)
point.x
point.y
*/

struct Pair<T, U> {
    let x: T
    let y: U
}

let p = Pair(x: "Hello", y: 4)

p.x
p.y


//Clases are the same that struct



//See whats an optional..!!

let goAndSeeOptional : Optional<String>;
let thisTheSame: String?

