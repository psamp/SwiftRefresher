//
//  SwiftRefresherTests.swift
//  SwiftRefresherTests
//
//  Created by Princess Sampson on 9/20/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import XCTest
import SwiftRefresher

//input:            [10,  4,  1, 6,  2]
//expected output = [48,120,480,80,240]


class SwiftRefresherTests: XCTestCase {
    
    func testProductsDiff() {
        
        let arr1 = [10, 4, 1, 6, 2]
        let arrExpected1 = [48, 120, 480, 80, 240]
        let arrActual1 = productsDiff(of: arr1)
        
        let arr2 = [8, 8, 8]
        let arrExpected2 = [64, 64, 64]
        let arrActual2 = productsDiff(of: arr2)
        
        let arr3 = [100, 500, 45, 34, 0]
        let arrExpected3 = [0, 0, 0, 0, 76500000]
        let arrActual3 = productsDiff(of: arr3)
        
        XCTAssertEqual(arrExpected1, arrActual1)
        XCTAssertEqual(arrExpected2, arrActual2)
        XCTAssertEqual(arrExpected3, arrActual3)
        
    }
    
    func testDedupeSortedList() {
        
        let arr1 = [1,  4,  21, 21, 50, 50, 50, 50, 100, 101]
        let arrExpected1 = (arr: [1,  4,  21, 50, 100, 101], count: 6)
        let arrActual1 = dedupeSortedArray(arr1)
        
        let arr2 = [8, 8, 8, 8]
        let arrExpected2 = (arr: [8], count: 1)
        let arrActual2 = dedupeSortedArray(arr2)
        
        XCTAssertEqual(arrExpected1.arr, arrActual1.arr)
        XCTAssertEqual(arrExpected1.count, arrActual1.count)
        XCTAssertEqual(arrExpected2.arr, arrActual2.arr)
        XCTAssertEqual(arrExpected2.count, arrActual2.count)
        
    }
    
    func testProductOf() {
        let expected1 = 1280
        let arr1 = [8, 5, 8 , 4]
        let actual1 = productOf(arr1)
        
        let expected2 = 64
        let arr2 = [8, 8]
        let actual2 = productOf(arr2)
        
        let expected3 = 55
        let arr3 = [55, 1]
        let actual3 = productOf(arr3)
        
        
        let expected4 = 1
        let arr4 = [1]
        let actual4 = productOf(arr4)
        
        let expected5 = 0
        let arr5 = [1, 0]
        let actual5 = productOf(arr5)
        
        let expected6 = 0
        let arr6 = [0, 1]
        let actual6 = productOf(arr6)
        
        let expected7 = 0
        let arr7 = [8, 5, 0, 8 ,4]
        let actual7 = productOf(arr7)
        
        XCTAssertEqual(expected1, actual1)
        XCTAssertEqual(expected2, actual2)
        XCTAssertEqual(expected3, actual3)
        XCTAssertEqual(expected4, actual4)
        XCTAssertEqual(expected5, actual5)
        XCTAssertEqual(expected6, actual6)
        XCTAssertEqual(expected7, actual7)
    }
    
}
