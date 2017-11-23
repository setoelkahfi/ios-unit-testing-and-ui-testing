//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by SDMobile on 23/11/17.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
    
    var gameUnderTest: BullsEyeGame!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        gameUnderTest = nil
        super.tearDown()
    }
    
    func testScoreIsComputedWhenGuessGTTarget() {
        // 1. Given
        let guess = gameUnderTest.targetValue - 5
        
        // 2. When
        _ = gameUnderTest.check(guess: guess)
        
        // 3. Then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
    
}
