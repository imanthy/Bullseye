//
//  Game.swift
//  Bullseye
//
//  Created by Anthy Chen on 2/9/23.
//

import Foundation

struct LeaderboardEntry {
    
    let score: Int
    let date: Date
}

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    var leaderboardEntries: [LeaderboardEntry] = []
    
    init(loadTestData: Bool = false) {
        if loadTestData {
            self.leaderboardEntries.append(LeaderboardEntry(score: 100, date: Date()))
            self.leaderboardEntries.append(LeaderboardEntry(score: 80, date: Date()))
            self.leaderboardEntries.append(LeaderboardEntry(score: 200, date: Date()))
            self.leaderboardEntries.append(LeaderboardEntry(score: 50, date: Date()))
            self.leaderboardEntries.append(LeaderboardEntry(score: 20, date: Date()))
        }
    }
    
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
        addToLeaderboard(points: points)
    }
    
    mutating func restart() {
        self.score = 0
        self.round = 0
        startNewRound(points: 0)
    }
    
    mutating func addToLeaderboard(points: Int) {
        let newRecord = LeaderboardEntry(score: points, date: Date())
        self.leaderboardEntries.append(newRecord)
        self.leaderboardEntries.sort { $0.score > $1.score }
    }
}
