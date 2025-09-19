//  🏔️ MTECH Code Challenge SF27: "Sum of a Range"
//  Concept: Practice using logic to translate a simple math equation into elegant Swift code.

//  Instructions:
    //  Write a program that finds the summation of every number from 1 to num.

//  Notes:
    //  The number will always be a positive integer greater than 0.

//  Examples:
    //  Input: 2
    //  Math: 1 + 2 = 3
    //  Output: 3

    //  Input: 8
    //  Math: 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 = 36
    //  Output: 36

//  ⌺ Black Diamond Challenge:
    //  Make your function compatible with negative integers, instead adding from -1 to the number specified.
    //  Input: -5, Math: -5 + -4 + -3 + -2 + -1, Output: -15

import Foundation

func findSum(input: Int) -> Int{
    var total = 0
    if input > 1 {
        for number in 1...input {
            total += number
        }
    } else {
        for number in input...0 {
            total += number
        }
    }
        return total
}

print(findSum(input: -5))
