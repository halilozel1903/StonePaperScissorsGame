//
//  GameRules.swift
//  TasKagitMakas
//
//  Created by Halil Özel on 16.07.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import Foundation

enum Move: String {
    case rock = "tas"
    case paper = "kagit"
    case scissors = "makas"

    var title: String {
        switch self {
        case .rock:
            return "Taş"
        case .paper:
            return "Kağıt"
        case .scissors:
            return "Makas"
        }
    }

    static let allValues: [Move] = [.rock, .paper, .scissors]

    static func randomComputerMove() -> Move {
        let index = Int(arc4random_uniform(UInt32(allValues.count)))
        return allValues[index]
    }

    func beats(_ other: Move) -> Bool {
        switch (self, other) {
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return true
        default:
            return false
        }
    }
}

enum RoundOutcome {
    case win
    case lose
    case draw

    var message: String {
        switch self {
        case .win:
            return "Siz kazandınız."
        case .lose:
            return "Bilgisayar kazandı."
        case .draw:
            return "Berabere kaldınız."
        }
    }
}

struct RoundResult {
    let playerMove: Move
    let computerMove: Move
    let outcome: RoundOutcome
}

enum GameRules {
    static let pointsToWinMatch = 5

    static func playRound(playerMove: Move, computerMove: Move) -> RoundResult {
        let outcome: RoundOutcome
        if playerMove == computerMove {
            outcome = .draw
        } else if playerMove.beats(computerMove) {
            outcome = .win
        } else {
            outcome = .lose
        }

        return RoundResult(
            playerMove: playerMove,
            computerMove: computerMove,
            outcome: outcome
        )
    }
}
