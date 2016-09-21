//
//  SwiftRefresherTests.swift
//  SwiftRefresherTests
//
//  Created by Princess Sampson on 9/20/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import XCTest
import SwiftRefresher

class SwiftRefresherTests: XCTestCase {
    
    func testProductOf() {
        let expected1 = 1280
        let expectedArr1 = [8, 5, 8 ,4]
        let actual1 = productOf(expectedArr1)
        
        let expected2 = 64
        let expectedArr2 = [8, 8]
        let actual2 = productOf(expectedArr2)
        
        let expected3 = 55
        let expectedArr3 = [55, 1]
        let actual3 = productOf(expectedArr3)
        
        
        let expected4 = 1
        let expectedArr4 = [1]
        let actual4 = productOf(expectedArr4)
        
        let expected5 = 0
        let expectedArr5 = [1, 0]
        let actual5 = productOf(expectedArr5)
        
        let expected6 = 0
        let expectedArr6 = [0, 1]
        let actual6 = productOf(expectedArr6)
        
        let expected7 = 0
        let expectedArr7 = [8, 5, 0, 8 ,4]
        let actual7 = productOf(expectedArr7)
        
        XCTAssertEqual(expected1, actual1)
        XCTAssertEqual(expected2, actual2)
        XCTAssertEqual(expected3, actual3)
        XCTAssertEqual(expected4, actual4)
        XCTAssertEqual(expected5, actual5)
        XCTAssertEqual(expected6, actual6)
        XCTAssertEqual(expected7, actual7)
    }
    
}
