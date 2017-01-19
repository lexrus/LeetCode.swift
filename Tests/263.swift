//
//  263.swift
//  LeetCode
//
//  Created by Lex on 9/6/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Write a program to check whether a given number is an ugly number.

Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.

Note that 1 is typically treated as an ugly number.
*/

import XCTest

func isUglyNumber(_ n: Int) -> Bool {
    if n < 1 {
        return false
    }
    if n == 1 {
        return true
    }
    if n % 2 == 0 {
        return isUglyNumber(n / 2)
    }
    if n % 3 == 0 {
        return isUglyNumber(n / 3)
    }
    if n % 5 == 0 {
        return isUglyNumber(n / 5)
    }
    return false
}

class UglyNumberTest: XCTestCase {

    func testUglyNumber() {
        XCTAssertTrue(isUglyNumber(1))
        XCTAssertTrue(isUglyNumber(6))
        XCTAssertTrue(isUglyNumber(8))
        XCTAssertTrue(isUglyNumber(10000))
        XCTAssertFalse(isUglyNumber(0))
        XCTAssertFalse(isUglyNumber(-8))
        XCTAssertFalse(isUglyNumber(14))

    }

}
