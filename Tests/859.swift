//
//  BuddyStrings.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/3.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Given two strings A and B of lowercase letters, return true if and only if we can swap two letters in A so that the result equals B.
//
//
//
//  Example 1:
//
//  Input: A = "ab", B = "ba"
//  Output: true
//
//  Input: A = "ab", B = "ab"
//  Output: false
//
//  Input: A = "aa", B = "aa"
//  Output: true
//
//  Input: A = "aaaaaaabc", B = "aaaaaaacb"
//  Output: true
//
//  Input: A = "", B = "aa"
//  Output: false

import XCTest

// @seealso https://leetcode.com/problems/buddy-strings/discuss/141780/Easy-Understood
func buddyStrings(_ A: String, _ B: String) -> Bool {
    if A.count != B.count {
        return false
    }
    if A == B {
        return Set(A).count < A.count
    }

    var dif = [Int]()
    A.enumerated().forEach { i, c in
        if c != B[i] {
            dif.append(i)
        }
    }
    return dif.count == 2 && A[dif[0]] == B[dif[1]] && A[dif[1]] == B[dif[0]]
}

class BuddyStringsTest: XCTestCase {

    func testBuddyStrings() {
        XCTAssertEqual(buddyStrings("aaaaa", "aaaaa"), true)
        XCTAssertEqual(buddyStrings("b", "b"), false)
        XCTAssertEqual(buddyStrings("aaaaa", "b"), false)
        XCTAssertEqual(buddyStrings("ab", "ba"), true)
        XCTAssertEqual(buddyStrings("aaaabc", "aaaacb"), true)
    }

}
