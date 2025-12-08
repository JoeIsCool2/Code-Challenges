//  🏔️ MTECH Code Challenge ND08: "Between Two Ints" 2️⃣↔️🔟
//  Concept: Practice using for loops to generate a dataset with custom parameters

//  Instructions:
    //  Create a function that takes two Integers, a and b, as input, and returns an array of Ints.
    //  The function should return an array of all integers from a to b, inclusive.

//  Notes:
    //  If a is greater than b, list all integers from b to a.

//  Examples:
    //  Input: 2, 10
    //  Output: [2, 3, 4, 5, 6, 7, 8, 9, 10]

//  ⌺ Black Diamond Challenge:
    //  Add a third parameter, c. Only return integers in the array that are divisible by c.
    //  Input: 2, 10, 3
    //  Output: [3, 6, 9]

import Foundation

func loop(smallNumber: Int, bigNumber: Int) -> [Int] {
    var smallNumber = smallNumber
    var allNumbers: [Int] = []
    for _ in smallNumber...bigNumber {
        allNumbers.append(smallNumber)
        smallNumber += 1
    }
    return allNumbers
}

func findAllNumbers(_ numberOne: Int, _ numberTwo: Int, _ step: Int) -> [Int] {
    var allNumbers: [Int] = []
    if numberOne > numberTwo {
        allNumbers = loop(smallNumber: numberTwo, bigNumber: numberOne)
    } else if numberTwo > numberOne {
        allNumbers = loop(smallNumber: numberOne, bigNumber: numberTwo)
    }
    return allNumbers.filter{ $0 % step == 0 }
}

print(findAllNumbers(21, 1, 7))
