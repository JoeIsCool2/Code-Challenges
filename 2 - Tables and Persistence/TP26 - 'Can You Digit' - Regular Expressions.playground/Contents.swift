//  🏔️ MTECH Code Challenge TP26: "Can You Digit"
//  Concept: Practice using regular expressions

//  Instructions:
    //  Create a function take that takes a string as input and returns a boolean.
    //  Your function should return true if the input string is a single digit, and false if it is anything else.
    //  You must use a regular expression to determine this. (Don't use Character's isNumber() method.)

//  Examples:
    //  Input: "7"
    //  Output: true

    //  Input: "838"
    //  Output: false

    //  Input: "hi"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle the following cases:
    //  1. Leading or trailing spaces: "  7  " should return true.
    //  2. Single digit with a positive or negative sign: "+7" and "-7" should return true.
    //  3. A digit within a string: "abc7xyz" should return true.

import Foundation

func isDigit(_ input: String) -> Bool {
    if input.count != 1 { return false }
    if let digit = Int(input) { return true }
    return false
}

func isDigitComplex(_ input: String) -> Bool {
    let numbers = "1234567890"
    let newInput = input.filter{ numbers.contains($0) }
    if newInput.count != 1 { return false }
    if let digit = Int(newInput) { return true }
    return false
}

func isDigitRegex(_ input: String) -> Bool {
    if try! /^\d\s*$/.wholeMatch(in: input) != nil {
        return true
    }
    if try! /^\s*[+,-]?\d\s*$/.wholeMatch(in: input) != nil {
        return true
    }
    if try! /^\s*[+, -]?\d[a-z]*?\s*$/.wholeMatch(in: input) != nil {
        return true
    }
    return false
}

print(isDigitComplex("asdfasf9"))
print(isDigitRegex("-8"))
