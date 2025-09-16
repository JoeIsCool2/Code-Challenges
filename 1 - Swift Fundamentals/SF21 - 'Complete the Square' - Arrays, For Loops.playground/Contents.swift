//  🏔️ MTECH Code Challenge SF12: "Complete the Square"
//  Concept: Solve simple math problems while working with arrays and loops

//  Instructions:
//      Create a function called completeTheSquare.
//      The function will take an array of ints and will return a single int
//      The function should A) square each number in the array, and then B) add the total of all squared numbers together.

//  Examples:
//    Input:
//      [1, 2, 2]
//    Math:
//      [1^2, 2^2, 2^2]
//      1^2 + 2^2 + 2^2
//    Output:
//      9

//  ⌺ Black Diamond Challenge:
//      Add a new function with the same name but one more parameter, exponent. Raise each number in the array by the given exponent, then return the sum.

import Foundation

func completeTheSquare(sides: [Int]) -> Int{
    let biggerSides = sides.map {$0 * $0}
    return biggerSides.reduce(0, +)
}

func completeTheSquare2(sides: [Int], exponent: Int) -> Int {
    let biggerSides = sides.map {Int(pow(Float($0), Float(exponent)))}
    return biggerSides.reduce(0, +)
}

print(completeTheSquare2(sides: [2, 4, 3], exponent: 4))
