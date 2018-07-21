//
//  RotatedDigits.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/21.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//    X is a good number if after rotating each digit individually by 180 degrees, we get a valid number that is different from X.  Each digit must be rotated - we cannot choose to leave it alone.
//
//    A number is valid if each digit remains a digit after rotation. 0, 1, and 8 rotate to themselves; 2 and 5 rotate to each other; 6 and 9 rotate to each other, and the rest of the numbers do not rotate to any other number and become invalid.
//
//    Now given a positive number N, how many numbers X from 1 to N are good?
//
//    Example:
//    Input: 10
//    Output: 4
//    Explanation:
//    There are four good numbers in the range [1, 10] : 2, 5, 6, 9.
//    Note that 1 and 10 are not good numbers, since they remain unchanged after rotating.

import XCTest

func rotatedDigits(_ N: Int) -> Int {
    let rotatable = 0b1001100100 // 9 6 5 2
    let banned =   0b10010011000 // 7 4 3

    var count = 0
    for i in 0...N {
        var n = N - i
        var isValid = true
        var rotated = false
        repeat {
            if rotatable & (1 << (n % 10)) != 0 {
                rotated = true
            } else if banned & (1 << (n % 10)) != 0 {
                isValid = false
            }
            n /= 10
        } while n > 0
        if rotated && isValid {
            count += 1
        }
    }
    return count
}

class RotatedDigitsTest: XCTestCase {

    func testRotatedDigits() {
        XCTAssertEqual(rotatedDigits(10), 4)
        XCTAssertEqual(rotatedDigits(20), 9)
        XCTAssertEqual(rotatedDigits(857), 247)
    }

}
