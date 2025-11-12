//  🏔️ MTECH Code Challenge TP25: "Rock Paper Scissors 2.0"
//  Concept: Add custom randomization to a function. Black Diamond: Parse arrays.

//  Instructions:
    //  Create a function that takes in a string as input. This is the users move (either rock, paper, or scissors).
    //  Randomly decide what the computers choice is.
    //  Return a string which declares the winner.

//  Examples:
    //  Input: "rock"
    //  Output: "I chose paper. You lose!"
    //  Output: "I chose rock. Draw! Go again?"
    //  Output: "I chose scissors. I lose."

//  ⌺ Black Diamond Challenge:
    //  Create another function that instead accepts an array as input. If only one move is entered, generate a random one for the computer; if two are entered, compare them.
    //  If more than two moves are input, the winners are the players who voted for the most popular move.

import Foundation

enum RockPaperScissors: CaseIterable {
    case rock, paper, scissors
    static func randomChoice() -> RockPaperScissors {
            return allCases.randomElement()!
        }
}

func playSingle(p1: RockPaperScissors) -> String {
    let p2 = RockPaperScissors.randomChoice()
    switch (p1, p2) {
    case  (.rock, .paper), (.scissors, .rock), (.paper, .scissors):
        return "I choose \(p2). You lose"
    default:
        if p1 == p2 {
            return "I Chose \(p2). We Tied"
        }
        return "I chose \(p2). You Win"
    }
}

func playMulti(p1: RockPaperScissors, p2: RockPaperScissors) -> String{
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

func countAndFindWinner(rock: Int, paper: Int, scissors: Int) -> String {
    if rock > paper && rock > scissors {
        return "Rock Wins"
    } else if paper > scissors && paper > rock {
        return "Paper wins"
    } else if scissors > paper && scissors > rock {
        return " Scissors Wins"
    } else {
        return "Tie"
    }
}

func playWithArray(move: [RockPaperScissors]) -> String? {
    guard move.count > 0 else { return nil }
    if move.count == 1 {
        return playSingle(p1: move[0])
    } else if move.count == 2{
        return playMulti(p1: move[0], p2: move[1])
    } else {
        let rock = move.filter{ $0 == .rock }
        let paper = move.filter{ $0 == .paper }
        let scissors = move.filter{ $0 == .scissors }
        return countAndFindWinner(rock: rock.count, paper: paper.count, scissors: scissors.count)
    }
}

print(playWithArray(move: [.rock, .paper]))
