//  🏔️ MTECH Code Challenge TP05: "Sentence Counting"
//  Concept: Practice how to think programatically about straightforward language tasks

//  Instructions:
    //  Given a string, return the number of sentences found in the string.

//  Examples:
    //  Input: "Alas, poor Yorick! I knew him, Horatio: a fellow of infinite jest, of most excellent fancy: he hath borne me on his back a thousand times; and now, how abhorred in my imagination it is! my gorge rims at it."
    //  Output: 3

//  Bonus challenge:
    //  Ensure that abbreviations ("Mr.", "e.g.") don't end a sentence.
    //  Handle sentences that end with multiple punctuation marks ("!?", "...")
    //  Return an array with the sentences ordered by length.

import Foundation

func countSentences(_ sentence: String) -> [String] {
    var currentString: String = ""
    var sentaces: [String] = []
    var startIndex = 0
    var count = 0

    for (index, letter) in sentence.enumerated() {
        if letter == "." || letter == "?" || letter == "!" {
            while startIndex <= index {
                let stringIndex = sentence.index(sentence.startIndex, offsetBy: startIndex)
                currentString += String(sentence[stringIndex])
                startIndex += 1
            }
            sentaces.append(currentString)
            currentString = ""
            count += 1
        }
    }

    return sortSentaces(sentaces)
}

func sortSentaces(_ sentaces: [String]) -> [String] {
    return sentaces.sorted { $0.count < $1.count }
}

print(countSentences("Alas, poor Yorick! I knew him, Horatio: a fellow of infinite jest, of most excellent fancy: he hath borne me on his back a thousand times; and now, how abhorred in my imagination it is! My gorge rims at it."))
