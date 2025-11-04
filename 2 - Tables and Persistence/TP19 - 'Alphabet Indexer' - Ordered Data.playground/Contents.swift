//  🏔️ MTECH Code Challenge TP19: "Alphabet Indexer"
//  Concept: Practice storing and evaluating a custom dataset

//  Instructions:
    //  When provided with a letter, return its position in the English alphabet.
    //  Your code should either throw an error, return nil, or fail to compile if something other than a single letter is provided.

//  Examples:
    //  Input: "a"
    //  Output: 1

//  Notes:
    //  Your code should be case insensitive.

//  ⌺ Black Diamond Challenge:
    //  Extend the functionality to handle strings with multiple characters. For such strings, return the sum of the positions of all the letters in the string. If any non-letter characters are present, throw an error, return nil, or fail to compile.
    //  Rewrite your function to not rely on using a literal array for the alphabet. (In other words, the alphabet itself should not appear in your function.)

import Foundation

func findLetter(letter: Character) -> Int? {
    let alphabet = "Aabcdefghijklmnopqrstuvwxyz"
    guard alphabet.contains(letter.lowercased()) else { return nil }
    let indexOfLetter = alphabet.firstIndex(of: Character(letter.lowercased()))!
    let index: Int = alphabet.distance(from: alphabet.startIndex, to: indexOfLetter)
    return index
}

print(findLetter(letter: "P")!)
