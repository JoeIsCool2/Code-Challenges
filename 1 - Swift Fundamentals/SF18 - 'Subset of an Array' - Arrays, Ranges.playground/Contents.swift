//  🏔️ MTECH Code Challenge SF18: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
//  Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

//  Examples:
//  Input: [15,5,6,7,2,3,45,12], 3
//  Output: [15,5,6]

//  ⌺ Black Diamond Challenge:
//  Create another function. This time, return the first and last n elements of the array. If the first and last n elements overlap (i.e., 3 first and 3 last in a 5 element array), return the whole array.

import Foundation

func countingArrays(numbers: [Int], howMany: Int) -> [Int] {
    var numbers = numbers
    while numbers.count > howMany {
        numbers.removeLast()
    }
    return numbers
}

func firstLastOfArray(numbers: [Int], howMany: Int) -> [Int] {
    if howMany * 2 >= numbers.count {
        return numbers
    }
    
    var result = [Int]()
    
    for i in 0..<howMany {
        result.append(numbers[i])
    }
    
    for i in (numbers.count - howMany)..<numbers.count {
        result.append(numbers[i])
    }
    
    return result
}


print(firstLastOfArray(numbers: [15,5,6,7,2,3,45,12,1,45,23,75,23,57], howMany: 4))
