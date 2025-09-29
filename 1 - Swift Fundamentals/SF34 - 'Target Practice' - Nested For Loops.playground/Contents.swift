//  🏔️ MTECH Code Challenge SF34: "Target Practice"
//  Concept: Practice looping through an array to find multiple values and evaluate their relationship; optionally, discuss with instructor time complexity

//  Instructions:
    //  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    //  You can return the answer in any order.

//  Examples:
    //  Input: nums = [2,7,11,15], target = 9
    //  Output: [0,1]
    //  Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

    //  Input: nums = [3,2,4], target = 6
    //  Output: [1,2]

    //  Input: nums = [3,3], target = 6
    //  Output: [0,1]

//  ⌺ Black Diamond Challenge:
    //  Consider if this function was given a very large array to work with, of say 10,000 integers, with a very high target value.
    //  If your solution involved looping through the array for each number, the time that it would take to complete the function would increase exponentially. In a comment, explain why this is.
    //  There is another solution to this problem that does not take as long, though it may be difficult at this stage in your progress to know how to code it. In a comment, brainstorm how that secondary solution might work.

import Foundation

func findNum(nums: [Int], target: Int) -> [Int] {
    var numbers = nums
    var output: [Int] = []
    for (index1, number1) in numbers.enumerated() {
        for (index2, number2) in numbers.enumerated() {
            if number1 + number2 == target {
                output.append(index1)
                output.append(index2)
                numbers.remove(at: index1)
                numbers.insert(-100, at: index1)
                numbers.remove(at: index2)
                numbers.insert(-100, at: index2)
            }
        }
    }
    return output
}

print(findNum(nums: [2,7,11,15,1,8], target: 9))

// It would take a long time because this is going through everysingle value in nums twice and checking them so the bigger it gets the more time it takes because the more stuff it had to go through
//I think and easiers way to dop this would be with like .map or .filter or .reduce
