//  🏔️ MTECH Code Challenge ND09: "OCR Clean-up"
//  Concept: Practice evaluating and modifying a string character-by-character.

//  Instructions:
//  Your boss decided to save money by purchasing some cut-rate optical character recognition software for scanning in the text of old novels to your database. At first it seems to capture words okay, but you quickly notice that it throws in a lot of numbers at random places in the text.
//  Your harried co-workers are looking to you for a solution to take this garbled text and remove all of the numbers. Your program will take in a string and clean out all numeric characters, and return a string with spacing and special characters ~#$%^&!@*():;"'.,? all intact.

//  Examples:
//  Input: "Ala3s, poo4r Yoric888k! I kn3ew h41im, H0or4at1i0o."
//  Output: "Alas, poor Yorick! I knew him, Horatio."

//  ⌺ Black Diamond Challenge:
//  Clearly there's a problem--what if the text contains numbers? Modify your program to only remove numbers if they are embedded in alphabetical characters--if a number has a space or special character before it, leave it intact.
//  Input: "Ple3ase turn to page 71."
//  Output: "Please turn to page 71."

import Foundation

let numbers = "1234567890"

func clearNumbers(_ input: String) -> String {
    input.filter { !numbers.contains($0) }
}

func clearNumbersAdvanced(_ input: String) -> String {
    var finalString = ""
    var isRepeating = false
    var howFar = 0
    
    for (index, letter) in input.enumerated() {
        if numbers.contains(input) {
            finalString += String(letter)
        } else if Array(input)[index - 1] == " " {
            isRepeating = true
            while isRepeating {
                if let currentInput = Array(input)[index + howFar] {
                    if numbers.contains(currentInput) {
                        finalString += String(currentInput)
                        howFar += 1
                    } else {
                        isRepeating = false
                    }
                }
            }
        }
    }
    return finalString
}

print(clearNumbers("Ala3s, poo4r Yoric888k! I kn3ew h41im, H0or4at1i0o."))
print(clearNumbersAdvanced("Ple3ase turn to page 71."))
