//
//  StringToIntegerAtoi.swift
//  StringToIntegerAtoi
//
//  Created by Lex Tang on 4/27/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Cocoa
import XCTest

class StringToIntegerAtoiTest: XCTestCase {
    
    func testStringToInteger() {
        self.measureBlock() {
            XCTAssertEqual(-2, atoi(" -02"), "")
            XCTAssertEqual(0, atoi(""), "")
            XCTAssertEqual(23, atoi(" 23-"), "")
            XCTAssertEqual(0, atoi(" asdfaasdf"), "")
            XCTAssertEqual(123, atoi("123"), "")
            XCTAssertEqual(123, atoi("   123"), "")
            XCTAssertEqual(123, atoi("123    "), "")
            XCTAssertEqual(123, atoi("+123"), "")
            XCTAssertEqual(123, atoi("123ABC"), "")
            XCTAssertEqual(123, atoi(" abc123ABC"), "")
            XCTAssertEqual(9223372036854775807, atoi("9223372036854775807"), "")
            XCTAssertEqual(-9223372036854775808, atoi("-9223372036854775808"), "")
            XCTAssertEqual(9223372036854775807, atoi("9223372036854775808"), "")
            XCTAssertEqual(-9223372036854775808, atoi("-9223372036854775809"), "")
        }
    }
    
}
