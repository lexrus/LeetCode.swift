//
//  326.swift
//  LeetCode
//
//  Created by Lex on 1/15/16.
//  Copyright © 2016 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

/*
Given an integer, write a function to determine if it is a power of three.

Follow up:
Could you do it without using any loop / recursion?
*/

infix operator ^^
func ^^ (radix: Int, power: Int) -> Double {
    return pow(Double(radix), Double(power))
}

// @see https://leetcode.com/discuss/79400/o-1-python-solution-with-explanation
extension Double {

    func isPowerOf(_ num: Int) -> Bool {
        if self < Double(num) {
            return false
        }
        let a = log(Double(self)) / log(Double(num))
        return fabs(a.rounded() - a) < 0.0000000000001
    }

}

class PowerOfThreeTest: XCTestCase {

    func testPowerOfThree() {
        XCTAssert(Double(9).isPowerOf(3))
        XCTAssert((3 ^^ 30).isPowerOf(3))
        XCTAssert((3 ^^ 78).isPowerOf(3))
        XCTAssert(!(2 ^^ 27).isPowerOf(3))
        XCTAssert((3 ^^ 99).isPowerOf(3))
        XCTAssert((3 ^^ 333).isPowerOf(3))
        XCTAssert((2 ^^ 27).isPowerOf(2))
        XCTAssert(!Double(2).isPowerOf(3))
    }

}
