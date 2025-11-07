//  🏔️ MTECH Code Challenge TP24: "Rock Paper Scissors"
//  Concept: Practice writing functions with game logic

//  Instructions:
    //  Create a function that takes in two strings. The strings will be either "rock", "paper", or "scissors", with one input for each player respectively.
    //  Determine who wins, and return a string saying which player won.

//  Examples:
    //  Input: "scissors", "paper"
    //  Output: "Player 1 won!"

    //  Input: "scissors", "rock"
    //  Output: "Player 2 won!"
    
    //  Input: "paper", "paper"
    //  Output: "Draw!"

//  ⌺ Black Diamond Challenge:
    //  Expand your game to include Spock and Lizard as weapon options. You can view the matchups here: 🔗https://www.samkass.com/theories/RPSSL.html

import Foundation

enum RockPaperScissors: CaseIterable {
    case rock, paper, scissors
    static func randomChoice() -> RockPaperScissors {
            return allCases.randomElement()!
        }
}

func play(p1: RockPaperScissors, p2: RockPaperScissors) -> String{
    switch (p1, p2) {
    case  (.rock, .paper), (.scissors, .rock), (.paper, .scissors):
        return " Player 2 wins"
    default:
        if p1 == p2 {
            return "its a tie you both played \(p1)"
        }
        return "Player 1 wins"
    }
}

print(play(p1: .rock, p2: .rock))









func playOnePlayer(p1: RockPaperScissors) -> String{
    let p2 = RockPaperScissors.randomChoice()
    
    if p1 == .paper && p2 == .scissors || p1 == .rock && p2 == .paper || p1 == .scissors && p2 == .rock {
        return " Player 2 wins, Player One played \(p1), Player 2 played \(p2)"
    } else if p1 == p2 {
        return "its a tie you both played \(p1)"
    } else {
        return "Player 1 wins. Player One played \(p1), Player 2 played \(p2)"
    }
}

print(playOnePlayer(p1: .paper))
