//  🏔️ MTECH Code Challenge SF30: "Averaging Scores"
//  Concept: Practice calculating the average of numbers in an array and rounding down the result

//  Instructions:
    //  It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy! You just need to write a script.
    //  Return the average of the given array rounded down to its nearest integer.

//  Notes:
    //  The array will never be empty.

//  Examples:
    //  Input: array: [90, 80, 70, 60, 50]
    //  Output: 70

    //  Input: array: [1, 2, 3, 4, 5]
    //  Output: 3

//  ⌺ Black Diamond Challenge:
    //  Create a function that not only calculates the average and rounds down, but also returns the highest and lowest values in the array.

import Foundation

func findAveragePlusMore(numbers: [Double]) -> String {
    guard numbers.isEmpty else {
        
        let bigNumber: Double = numbers.reduce(0, +)
        let finalNumber = (bigNumber / Double(numbers.count))
        
        let biggestNumber = numbers.reduce(Int.min){ max($0, Int($1)) }
        let smallestNumber = numbers.reduce(Int.max){ min($0, Int($1)) }
        
        return "The average is \(Int(floor(finalNumber))), the biggest number is \(biggestNumber) and the smallest number is \(smallestNumber)"
    }
    return "0"
}

print(findAveragePlusMore(numbers: [90, 90, 90, 80, 50, 0, 60, 70, 80]))
