//
//  ReverseInteger.swift
//  ReverseInteger
//
//  Created by Lex Tang on 4/17/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class ReverseIntegerTest: XCTestCase {
    
    func testReverseInteger() {
        self.measureBlock() {
            // INT32_MAX == 2147483647
            
            XCTAssert(2.reverse() == 2, "")
            XCTAssert(123.reverse() == 321, "")
            XCTAssert(-123.reverse() == -321, "")
            XCTAssert(-100.reverse() == -1, "")
            XCTAssert(1002.reverse() == 2001, "")
            XCTAssert(1463847412.reverse() == 2147483641, "")
            XCTAssert(-2147447412.reverse() == -2147447412, "")
            XCTAssert(2147447412.reverse() == 2147447412, "")

            XCTAssert( 1000000003.reverse() == 0, "Must overflow")
            XCTAssert( 2147483647.reverse() == 0, "Must overflow")
            XCTAssert(-2147483648.reverse() == 0, "Must overflow")
            XCTAssert(Int(INT32_MAX).reverse() == 0, "Must overflow")
        }
    }
    
}
