//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Anthy Chen on 2/9/23.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.calculatePoints(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.calculatePoints(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }

}
