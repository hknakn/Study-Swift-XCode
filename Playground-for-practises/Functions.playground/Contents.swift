//: Playground - noun: a place where people can play

import UIKit

func myFunction() {
    print("Hello world!")
}

myFunction()

func sumFunction(x: Int, y: Int) -> Int {
   print(x + y)
   return x + y
    
}

sumFunction(x: 10, y: 50)
sumFunction(x: -10, y: -50)


func myLogic(x: Int, y:Int) -> Bool {
    if x > y {
        return true
    } else {
        return false
    }
}

myLogic(x: 1, y: 5)
