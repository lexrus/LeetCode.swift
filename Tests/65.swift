//
//  ValidNumberTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Validate if a given string is numeric.

Some examples:
"0" => true
" 0.1 " => true
"abc" => false
"1 a" => false
"2e10" => true
Note: It is intended for the problem statement to be ambiguous. You should gather all requirements up front before implementing one.

@see also: https://github.com/haoel/leetcode/blob/master/algorithms/validNumber/validNumber.cpp
*/

import Foundation
import XCTest


extension String {

    func isNumber() -> Bool {
        if isEmpty {
            return false
        }

        var index = 0
        let length = self.characters.count

        for (i, c) in self.characters.enumerated() {
            if c.isSpace() {
                continue
            } else {
                if i != length - 1 {
                    index = i
                }
                break
            }
        }

        if index == length - 1 {
            return false
        }

        if let c = self[index + 1] {
            if c == "+" || c == "-" {
                index += 1
            }
        }

        var hasPoint = false
        var hasE = false

        var s = self[index]
        let firstDigit = s

        while index < length {
            defer { index += 1 }
            s = self[index]

            if s == "." {
                if hasPoint || hasE {
                    return false
                }
                if s == firstDigit && self[index + 1] != nil && !self[index + 1]!.isDigit() {
                    return false
                }
                hasPoint = true
                continue
            }

            if s == "e" {
                if hasE || s == firstDigit {
                    return false
                }
                index += 1
                s = self[index]
                if s == "+" || s == "-" {
                    index += 1
                }
                s = self[index]
                if s == nil || !s!.isDigit() {
                    return false
                }

                hasE = true
                continue
            }

            if s != nil && s!.isSpace() {
                while index < length {
                    s = self[index]
                    if s != nil && !s!.isSpace() {
                        return false
                    }
                    index += 1
                }
                return true
            }

            if s != nil && !s!.isDigit() {
                return false
            }

        }

        return true
    }

}


class ValidNumberTest: XCTestCase {

    func testValidNumber() {
        XCTAssertTrue("1.044".isNumber(), "")
        XCTAssertTrue(" 1.044 ".isNumber(), "")
        XCTAssertTrue(!"1.a".isNumber(), "")
        XCTAssertTrue(!"abc".isNumber(), "")
        XCTAssertTrue(!"e".isNumber(), "")
        XCTAssertTrue(!"1e".isNumber(), "")
        XCTAssertTrue("1e2".isNumber(), "")
        XCTAssertTrue(!"".isNumber(), "")
        XCTAssertTrue(!" ".isNumber(), "")
        XCTAssertTrue("1.".isNumber(), "")
        XCTAssertTrue(".2".isNumber(), "")
        XCTAssertTrue(!" . ".isNumber(), "")
        XCTAssertTrue(!".".isNumber(), "")
        XCTAssertTrue(!"1.2.3".isNumber(), "")
        XCTAssertTrue(!"1e2e3".isNumber(), "")
        XCTAssertTrue(!"1..".isNumber(), "")
        XCTAssertTrue(!"+1.".isNumber(), "")
        XCTAssertTrue(!" -1.".isNumber(), "")
        XCTAssertTrue(!"6e6.5".isNumber(), "")
        XCTAssertTrue("005047e+6".isNumber(), "")
    }
    
}
