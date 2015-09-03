//
//  ValidNumberTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class ValidNumberTest: XCTestCase {

    func testValidNumber() {
        self.measureBlock() {
            XCTAssertTrue("1.044".isNumber(), "");
            XCTAssertTrue(" 1.044 ".isNumber(), "");
            XCTAssertTrue(!"1.a".isNumber(), "");
            XCTAssertTrue(!"abc".isNumber(), "");
            XCTAssertTrue(!"e".isNumber(), "");
            XCTAssertTrue(!"1e".isNumber(), "");
            XCTAssertTrue("1e2".isNumber(), "");
            XCTAssertTrue(!"".isNumber(), "");
            XCTAssertTrue(!" ".isNumber(), "");
            XCTAssertTrue("1.".isNumber(), "");
            XCTAssertTrue(".2".isNumber(), "");
            XCTAssertTrue(!" . ".isNumber(), "");
            XCTAssertTrue(!".".isNumber(), "");
            XCTAssertTrue(!"1.2.3".isNumber(), "");
            XCTAssertTrue(!"1e2e3".isNumber(), "");
            XCTAssertTrue(!"1..".isNumber(), "");
            XCTAssertTrue(!"+1.".isNumber(), "");
            XCTAssertTrue(!" -1.".isNumber(), "");
            XCTAssertTrue(!"6e6.5".isNumber(), "");
            XCTAssertTrue("005047e+6".isNumber(), "");
        }
    }

}
