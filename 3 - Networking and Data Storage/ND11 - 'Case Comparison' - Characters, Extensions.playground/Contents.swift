//  🏔️ MTECH Code Challenge ND11: "Case Comparison"
//  Concept: Practice creating extensions and comparing two variables with unique criteria

//  Instructions:
    //  Extend the Character type with a method that takes another Character as input and returns an Int as output.
    //  The method should check if the input character and the character the method is called on are the same case.
        //  If either of the characters is not a letter, return -1
        //  If both characters are the same case, return 1
        //  If both characters are letters, but not the same case, return 0

//  Examples:
    //  Input: Character("a").sameCaseAs(Character("b"))
    //  Output: 1

    //  Input: Character("C").sameCaseAs(Character("d"))
    //  Output: 0

    //  Input: Character("5").sameCaseAs(Character("f"))
    //  Output: -1

//  ⌺ Black Diamond Challenge:
    //  Make it so that your function does not rely on existing Character methods or properties (i.e., .isLowercase and .isUppercase).
    //  Use an enum as the return type instead of an Int.
    //  Add another method that will instead return the input character in the same case as self.

import Foundation

struct Character {
    let input: String
    
    let upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    func sameCaseAs(Character: String) -> Int {
        var returnValue = 0
        
        if input.count == 1 && Character.count == 1 && upper.lowercased().contains(input.lowercased()) && upper.lowercased().contains(Character.lowercased()) {
            if upper.contains(input) {
                if upper.contains(Character) {
                    returnValue = 1
                }
            } else if !upper.contains(Character) {
                returnValue = 1
            }
        } else {
            returnValue = -1
        }
        return returnValue
    }
}

Character(input: "a").sameCaseAs(Character: "h")
Character(input: "H").sameCaseAs(Character: "f")
Character(input: "5").sameCaseAs(Character: "q")
