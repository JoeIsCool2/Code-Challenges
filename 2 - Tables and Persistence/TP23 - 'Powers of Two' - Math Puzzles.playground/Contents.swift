//  🏔️ MTECH Code Challenge TP23: "Powers of Two"
//  Concept: Practice translating math into Swift code

//  Instructions:
    //  Create a function that takes a non-negative integer n as input, and returns a list of all the powers of 2 with the exponent ranging from 0 to n (inclusive).

//  Examples:
    //  Input: 2
    //  Math: 2^0, 2^1, 2^2
    //  Output: [1, 2, 4]

    //  Input: 5
    //  Math: 2^0, 2^1, 2^2, 2^3, 2^4, 2^5
    //  Output: [1, 2, 4, 8, 16, 32]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, return all powers of N with the exponent ranging from 0 to n (inclusive).
    //  Input: 4, Output: [1, 4, 16, 64, 256]

import Foundation

func powerOfTwo(_ number: Int) -> [Int] {
    guard number >= 0 else { return [] }
    var allNumbers: [Int] = []
    for num in 0...number {
        allNumbers.append(Int(pow(2.0, Double(num))))
    }
    return allNumbers
}

func powerOfN(_ number: Int) -> [Int] {
    guard number >= 0 else { return [] }
    var allNumbers: [Int] = []
    for num in 0...number {
        allNumbers.append(Int(pow(Double(number), Double(num))))
    }
    return allNumbers
}

print(powerOfTwo(5))
print(powerOfN(4))
