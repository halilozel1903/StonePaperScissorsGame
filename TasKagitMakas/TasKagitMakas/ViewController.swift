//
//  ViewController.swift
//  TasKagitMakas
//
//  Created by Halil Özel on 16.07.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Variables
    var myPoints = 0
    var pcPoints = 0
    var winStreak = 0
    var bestStreak = 0
    var matchOver = false

    // MARK: - IBOutlets
    @IBOutlet weak var myChoiseLabel: UILabel!
    @IBOutlet weak var pcChoiseLabel: UILabel!
    @IBOutlet weak var theEndLabel: UILabel!
    @IBOutlet weak var myPointsLabel: UILabel!
    @IBOutlet weak var pcPointsLabel: UILabel!

    private let streakLabel = UILabel()
    private let matchLabel = UILabel()
    private let resetButton = UIButton(type: .system)

    // MARK: - IBActions
    @IBAction func rockSelected(_ sender: Any) {
        play(.rock)
    }

    @IBAction func paperSelected(_ sender: Any) {
        play(.paper)
    }

    @IBAction func scissorSelected(_ sender: Any) {
        play(.scissors)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMatchChrome()
        refreshScoreboard()
    }

    private func play(_ playerMove: Move) {
        if matchOver {
            theEndLabel.text = "Maç bitti. Yeni maç için sıfırla."
            return
        }

        let result = GameRules.playRound(
            playerMove: playerMove,
            computerMove: Move.randomComputerMove()
        )

        myChoiseLabel.text = "Sizin seçiminiz : \(result.playerMove.title)"
        pcChoiseLabel.text = "Bilgisayarın seçimi : \(result.computerMove.title)"
        theEndLabel.text = result.outcome.message

        switch result.outcome {
        case .win:
            myPoints += 1
            winStreak += 1
            if winStreak > bestStreak {
                bestStreak = winStreak
            }
        case .lose:
            pcPoints += 1
            winStreak = 0
        case .draw:
            break
        }

        if myPoints >= GameRules.pointsToWinMatch || pcPoints >= GameRules.pointsToWinMatch {
            matchOver = true
            if myPoints > pcPoints {
                theEndLabel.text = "Maçı siz kazandınız! \(myPoints)-\(pcPoints)"
            } else {
                theEndLabel.text = "Maçı bilgisayar kazandı. \(myPoints)-\(pcPoints)"
            }
        }

        refreshScoreboard()
    }

    @objc private func resetMatch() {
        myPoints = 0
        pcPoints = 0
        winStreak = 0
        matchOver = false
        myChoiseLabel.text = "Sizin seçiminiz :"
        pcChoiseLabel.text = "Bilgisayarın seçimi :"
        theEndLabel.text = "Yeni maç başladı. İlk \(GameRules.pointsToWinMatch) puanı alan kazanır."
        refreshScoreboard()
    }

    private func refreshScoreboard() {
        myPointsLabel.text = String(myPoints)
        pcPointsLabel.text = String(pcPoints)
        streakLabel.text = "Seri: \(winStreak)  •  En iyi: \(bestStreak)"
        matchLabel.text = "İlk \(GameRules.pointsToWinMatch)'e \(myPoints)-\(pcPoints)"
    }

    private func setupMatchChrome() {
        streakLabel.translatesAutoresizingMaskIntoConstraints = false
        streakLabel.textAlignment = .center
        streakLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        streakLabel.textColor = UIColor.darkGray

        matchLabel.translatesAutoresizingMaskIntoConstraints = false
        matchLabel.textAlignment = .center
        matchLabel.font = UIFont.boldSystemFont(ofSize: 16)

        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.setTitle("Maçı Sıfırla", for: .normal)
        resetButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        resetButton.addTarget(self, action: #selector(resetMatch), for: .touchUpInside)

        view.addSubview(matchLabel)
        view.addSubview(streakLabel)
        view.addSubview(resetButton)

        NSLayoutConstraint.activate([
            matchLabel.topAnchor.constraint(equalTo: myPointsLabel.bottomAnchor, constant: 12),
            matchLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            matchLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),

            streakLabel.topAnchor.constraint(equalTo: matchLabel.bottomAnchor, constant: 6),
            streakLabel.leadingAnchor.constraint(equalTo: matchLabel.leadingAnchor),
            streakLabel.trailingAnchor.constraint(equalTo: matchLabel.trailingAnchor),

            resetButton.topAnchor.constraint(equalTo: streakLabel.bottomAnchor, constant: 8),
            resetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
