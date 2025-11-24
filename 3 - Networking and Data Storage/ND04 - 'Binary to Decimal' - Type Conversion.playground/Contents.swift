//  🏔️ MTECH Code Challenge ND04: "Binary to Decimal"
//  Concept: Practice moving between different representations of the same data

//  Instructions:
    //  Create a function that takes a String as input and returns an Int.
    //  The input string will be a binary number. Return it as a base 10 number.

    //  Helpful Link: 🔗https://www.cuemath.com/numbers/binary-to-decimal/

//  Examples:
    //  Input: 10010001
    //  Output: 145

//  ⌺ Black Diamond Challenge:
    //  Create another function that converts an Int to binary representation in a String.
    //  Add your functions as extensions of String and Int, respectively, so they can be called directly on any String or Int. You will need to also add input validation so you can be certain that a String is in binary format when the user tries to convert it; return nil if the input is invalid.

import Foundation

func binaryToDecimal(_ Input: Int) -> Int {
    let inputString = String(Input)
    var finalNumber = 0
    for num in inputString {
        if let number = Int(String(num)) {
            finalNumber = (finalNumber * 2) + number
        }
    }
    return finalNumber
}

print(binaryToDecimal(10010001))
print(binaryToDecimal(10101101))
