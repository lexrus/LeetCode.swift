//
//  RomanToInteger.swift
//  RomanToInteger
//
//  Created by Lex on 4/25/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given a roman numeral, convert it to an integer.

Input is guaranteed to be within the range from 1 to 3999.
*/

import Foundation
import XCTest


extension String {

    func romanToInteger() -> Int {
        var result = 0
        for c in Array(self.characters.reversed()) {
            switch c {
            case "I":
                result += result >= 5 ? -1 : 1
                break
            case "V":
                result += 5
                break
            case "X":
                result += 10 * (result >= 50 ? -1 : 1)
                break
            case "L":
                result += 50
                break
            case "C":
                result += 100 * (result >= 500 ? -1 : 1)
                break
            case "D":
                result += 500
                break
            case "M":
                result += 1000
                break
            default: ()
            }
        }

        return result
    }

}


class RomanToIntegerTest: XCTestCase {

    func testRomanToInteger() {
        XCTAssertEqual("X".romanToInteger(), 10, "")
        XCTAssertEqual("XII".romanToInteger(), 12, "")
        XCTAssertEqual("XV".romanToInteger(), 15, "")
    }
    
}
