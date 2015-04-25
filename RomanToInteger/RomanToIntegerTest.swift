//
//  RomanToInteger.swift
//  RomanToInteger
//
//  Created by Lex on 4/25/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Cocoa
import XCTest

class RomanToIntegerTest: XCTestCase {
    
    func testRomanToInteger() {
        self.measureBlock() {
            XCTAssertEqual("X".romanToInteger(), 10, "")
            XCTAssertEqual("XII".romanToInteger(), 12, "")
            XCTAssertEqual("XV".romanToInteger(), 15, "")
        }
    }
    
}
