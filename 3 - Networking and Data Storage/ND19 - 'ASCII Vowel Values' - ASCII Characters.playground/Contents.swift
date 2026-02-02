//  🏔️ MTECH Code Challenge ND19: "ASCII Vowel Values"
//  Concept: Practice working with ASCII numerical representations of letters

//  Instructions:
    //  Write a function that takes an array of numbers and returns a [Character: [Int]] dictionary.
    //  For each number in the input array, check if it is an ASCII value for a lowercase vowel (a, e, i, o, u).
    //  If it is, add the index of that value to an array in a dictionary where vowels are the keys.
    //  Return the resulting dictionary which can now be used to get the locations of all the vowels in the input array.

//  Hints:
    //  🔗https://www.asciitable.com/
    //  🔗https://stackoverflow.com/questions/24354549/how-to-get-string-from-ascii-code-in-swift

//  Examples:
    //  Input: [97, 103, 98, 100]
    //  Logic: These represent the letters a, g, b, and d, respectively.
    //  Output: ["i": [], "o": [], "u": [], "e": [], "a": [0]]

//  ⌺ Black Diamond Challenge:
    //  Extend the function to also handle uppercase vowels (A, E, I, O, U).
    //  Store their indices in the dictionary separately from their lowercase counterparts.

import Foundation

func findVowel(_ input: [Int]) -> [Character: [Int]] {
    var i: [Int] = []
    var o: [Int] = []
    var u: [Int] = []
    var e: [Int] = []
    var a: [Int] = []

    for (index, number) in input.enumerated() {
        switch number {
        case 97:
            a.append(index)
        case 101:
            e.append(index)
        case 105:
            i.append(index)
        case 111:
            o.append(index)
        case 117:
            u.append(index)
        default: print("none")
        }
    }
    
    return ["i": i, "o": o, "u": u, "e": e, "a": a]
}

print(findVowel([97, 103, 98, 100]))
