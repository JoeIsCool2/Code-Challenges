
//  🏔️ MTECH Code Challenge SF38: "Merge Sort & Sorting Summary"
//  Concept: Review sorting algorithms and demonstrate a base level understanding of time complexity.

//  Instructions:
    //  Do some research on Merge Sort: 🔗https://en.wikipedia.org/wiki/Merge_sort
    //  Why is this sort more efficient than the other sorts we have learned?
    //  Why would we have you learn about sorting algorithms when there is a perfectly good .sort() function?
    //  Explain your answer in the /* */ comment marks below.

//  ⌺ Black Diamond Challenge:
    //  Include extra relevant information you learned in the black diamond challenges in your writing below.
    //  If you have not completed the other black diamond challenges, do those instead.

// MARK: Your response:

/*
 Merge Sorts are more efficient because...
 
 We need to learn about sorting algorithms so that...
 */

import Foundation

func mergeSort < Int: Comparable > (_ numbers: [Int]) -> [Int] {
    guard numbers.count > 1 else { return numbers }
    let mid = numbers.count / 2
    let left = mergeSort(Array(numbers[..<mid]))
    let right = mergeSort(Array(numbers[mid...]))
    var leftIndex = 0, rightIndex = 0
    var mergeSorted: [Int] = []
    mergeSorted.reserveCapacity(numbers.count)
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            mergeSorted.append(left[leftIndex]); leftIndex += 1
        } else {
            mergeSorted.append(right[rightIndex]); rightIndex += 1
        }
    }
    if leftIndex < left.count { mergeSorted.append(contentsOf: left[leftIndex...]) }
    if rightIndex < right.count { mergeSorted.append(contentsOf: right[rightIndex...]) }
    return mergeSorted
}

print(mergeSort([98, 1, 45, 13, 6, 77, 22, 5]))

