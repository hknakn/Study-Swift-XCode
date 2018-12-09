//: Playground - noun: a place where people can play

import UIKit

var myName : String?

myName?.uppercased()

// optionals: ? vs !
// ? means there can be no value
// ! means there should be value

var myAge = "10"

if let number = Int(myAge) {
    
    let myResult = number * 5
    print(myResult)
    
}
