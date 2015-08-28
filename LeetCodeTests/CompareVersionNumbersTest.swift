//
//  CompareVersionNumbersTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/13/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Cocoa
import XCTest

class CompareVersionNumbersTest: XCTestCase {

    func testCompareVersionNumbers() {
        self.measureBlock() {
            XCTAssertEqual(compareVersionNumbers("0.1", rhs: "1.0"), -1, "")
            XCTAssertEqual(compareVersionNumbers("0.1", rhs: "1.1"), -1, "")
            XCTAssertEqual(compareVersionNumbers("1.0", rhs: "1.1"), -1, "")
            XCTAssertEqual(compareVersionNumbers("1.1.1", rhs: "1.1.2"), -1, "")
            XCTAssertEqual(compareVersionNumbers("1.1", rhs: "1.1.2"), -1, "")
            XCTAssertEqual(compareVersionNumbers("13.23", rhs: "13.24"), -1, "")
            XCTAssertEqual(compareVersionNumbers("13.23", rhs: "13.23.4"), -1, "")
            XCTAssertEqual(compareVersionNumbers("13.23", rhs: "13.23.0"), 0, "")
            XCTAssertEqual(compareVersionNumbers("13.23", rhs: "13.23.0.1"), -1, "")
            XCTAssertEqual(compareVersionNumbers("0.0.1", rhs: "0.0.2"), -1, "")
            XCTAssertEqual(compareVersionNumbers("0.0.2", rhs: "0.0.12"), -1, "")
            XCTAssertEqual(compareVersionNumbers("1", rhs: "1"), 0, "")
            XCTAssertEqual(compareVersionNumbers("2", rhs: "1.99"), 1, "")
        }
    }

}
