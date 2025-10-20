//  🏔️ MTECH Code Challenge TP08: "Print Plurals"
//  Concept: Practice looping over an array of data and analyzing its contents

//  Instructions:
    //  Write a function that takes in an array of strings. Print all the plural strings that end in 's'

//  Notes:
    //  You do not need to worry about irregular plurals ("deer", "geese")
    //  You do not need to worry about other words that end in 's' ("class", "GPS")

//  Examples:
    //  Input: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes", "Raspberry"]
    //  Output:
        //  Oranges
        //  Bananas
        //  Grapes

//  ⌺ Black Diamond Challenge:
    //  Write an answer to the following question as a comment: What do you think it would involve to write a function that does identify irregular plurals and exclude words that happen to end in 's'? What would you have to do to accomplish that?
    //  Write another function that converts all singular strings in an array to plural, but does not add an 's' if they are already plural. (You still do not need to worry about irregular plurals.)
    //  Input: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes"]
    //  Output: Apples, Oranges, Pineapples, Bananas, Grapes

import Foundation

func findPlurals(words: [String]) -> [String] {
    words.filter{$0.hasSuffix("s") }
}
// to make a function that only returns real plural words I think you would have to have an array of every single word that is not pluarl but would be picked up.

func makePlurals(words: [String]) -> [String] {
    var sortedPluralWords = words.filter{$0.hasSuffix("s") }
    let sortedSingularWords = words.filter{!$0.hasSuffix("s") }
    sortedPluralWords += sortedSingularWords.map{$0 + "s"}
    return sortedPluralWords
}

print(findPlurals(words: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes", "Raspberry"]))
print(makePlurals(words: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes", "Raspberry"]))
