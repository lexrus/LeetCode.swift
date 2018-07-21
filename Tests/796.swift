//
//  RotateString.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/21.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//    We are given two strings, A and B.
//
//    A shift on A consists of taking string A and moving the leftmost character to the rightmost position. For example, if A = 'abcde', then it will be 'bcdea' after one shift on A. Return True if and only if A can become B after some number of shifts on A.
//
//    Example 1:
//    Input: A = 'abcde', B = 'cdeab'
//    Output: true
//
//    Example 2:
//    Input: A = 'abcde', B = 'abced'
//    Output: false
//    Note:
//
//    A and B will have length at most 100.

import XCTest

func rotateString(_ A: String, _ B: String) -> Bool {
    if A.isEmpty && B.isEmpty {
        return true
    }

    return A.count == B.count && (A + A).contains(B)
}

class RotateStringTest: XCTestCase {

    func testRotateString() {
        XCTAssertTrue(rotateString("abcde", "cdeab"))
        XCTAssertFalse(rotateString("abcde", "abced"))
        XCTAssertTrue(rotateString("", ""))
    }

}
