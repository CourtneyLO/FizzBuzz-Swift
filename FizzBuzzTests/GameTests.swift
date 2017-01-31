//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Courtney Osborn on 30/01/2017.
//  Copyright © 2017 Courtney Osborn. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
            }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0 )
    }
    
    func testOnPlayScoreIncremented() {
        game.play(input: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRigh() {
        game.score = 2
        let response = game.play(input: "Fizz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testFizzOnOneReturnsFalse() {
        game.score = 1
        let response = game.play(input: "Fizz" )
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testBuzzOnFiveReturnsTrue() {
        game.score = 4
        let response = game.play(input: "Buzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testBuzzOnSixReturnsFalse() {
        game.score = 5
        let response = game.play(input: "Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testBuzzOnFifteenReturnsTrue() {
        game.score = 14
        let response = game.play(input: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testBuzzOnFourteenReturnsFalse() {
        game.score = 13
        let response = game.play(input: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func test14OnFourteenReturnsTrue() {
        game.score = 13
        let response = game.play(input: "14")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func test13OnFourteenReturnsTrue() {
        game.score = 13
        let response = game.play(input: "13")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(input: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(input: "1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(input: "1")
        XCTAssertNotNil(response.score)
    }

}
