//
//  PlusOneTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/6/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class PlusOneTest: XCTestCase {

    func testPlusOne() {
        self.measureBlock() {
            XCTAssertEqual(plusOne([1, 2, 3]), [1, 2, 4], "")
            XCTAssertEqual(plusOne([9]), [1, 0], "")
            XCTAssertEqual(plusOne([0]), [1], "")
            XCTAssertEqual(plusOne([9, 9, 9, 9]), [1, 0, 0, 0, 0], "")
        }
    }

}
