//
//  258.swift
//  LeetCode
//
//  Created by Lex on 9/6/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.

For example:

Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. Since 2 has only one digit, return it.

Follow up:
Could you do it without any loop/recursion in O(1) runtime?
*/

import XCTest

func addDigitsNaïve(_ n: Int) -> Int {

    func sumDigits(_ m: Int) -> Int {
        let o = m % 10
        if m > 9 {
            return o + sumDigits(m / 10)
        }
        return m
    }

    let p = sumDigits(n)
    if p > 9 {
        return addDigitsNaïve(p)
    }
    return p
}

func addDigits(_ n: Int) -> Int {
    if n < 10 {
        return n
    }
    return n % 9
}

class AddDigitsTest: XCTestCase {

    func testAddDigitsNaïve() {
        XCTAssertEqual(addDigitsNaïve(0), 0)
        XCTAssertEqual(addDigitsNaïve(12), 3)
        XCTAssertEqual(addDigitsNaïve(1), 1)
        XCTAssertEqual(addDigitsNaïve(10), 1)
        XCTAssertEqual(addDigitsNaïve(9), 9)
        XCTAssertEqual(addDigitsNaïve(65536), 7)
        XCTAssertEqual(addDigitsNaïve(38), 2)
    }

    func testAddDigits() {
        XCTAssertEqual(addDigits(0), 0)
        XCTAssertEqual(addDigits(12), 3)
        XCTAssertEqual(addDigits(1), 1)
        XCTAssertEqual(addDigits(10), 1)
        XCTAssertEqual(addDigits(9), 9)
        XCTAssertEqual(addDigits(65536), 7)
        XCTAssertEqual(addDigits(38), 2)
    }

}
