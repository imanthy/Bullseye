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
        return 100 - abs(self.target - sliderValue)
    }
}
