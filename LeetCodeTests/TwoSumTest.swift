//
//  TwoSum.swift
//  TwoSum
//
//  Created by Lex Tang on 4/15/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class TwoSumTest: XCTestCase {
    
    let case0 = [2, 4, 6, 7, 8]
    let case1 = [2, 7, 11, 15]
    let case2 = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
    
    func testTwoSum0() {
        self.measureBlock() {
            let result0 = TwoSum.twoSum0(self.case0, target: 9)!
            XCTAssert(result0.0 == 1 && result0.1 == 4, "TwoSum.twoSum0")
            
            let result1 = TwoSum.twoSum0(self.case1, target: 9)!
            XCTAssert(result1.0 == 1 && result1.1 == 2, "TwoSum.twoSum0")
            
            let result2 = TwoSum.twoSum0(self.case2, target: 9)
            XCTAssert(result2 == nil, "TowSum.twoSum0")
        }
    }
    
    func testTwoSum1() {
        self.measureBlock() {
            let result0 = TwoSum.twoSum1(self.case0, target: 9)!
            XCTAssert(result0.0 == 1 && result0.1 == 4, "TwoSum.twoSum1")
            
            let result1 = TwoSum.twoSum1(self.case1, target: 9)!
            XCTAssert(result1.0 == 1 && result1.1 == 2, "TwoSum.twoSum1")
            
            let result2 = TwoSum.twoSum1(self.case2, target: 9)
            XCTAssert(result2 == nil, "TwoSum.twoSum1")
        }
    }
    
}
