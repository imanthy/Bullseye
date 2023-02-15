//
//  Game.swift
//  Bullseye
//
//  Created by Anthy Chen on 2/9/23.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func calculatePoints(sliderValue: Int) -> Int {
        let difference = abs(self.target - sliderValue)
        var bonus = 0
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        }
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int) {
        self.score += points
        self.round += 1
        self.target = Int.random(in: 1...100)
    }
    
    mutating func restart() {
        self.score = 0
        self.round = 0
        startNewRound(points: 0)
    }
}
