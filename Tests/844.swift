//
//  BackspaceStringCompare.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/8.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.
//
//  Example 1:
//
//  Input: S = "ab#c", T = "ad#c"
//  Output: true
//  Explanation: Both S and T become "ac".
//  Example 2:
//
//  Input: S = "ab##", T = "c#d#"
//  Output: true
//  Explanation: Both S and T become "".
//  Example 3:
//
//  Input: S = "a##c", T = "#a#c"
//  Output: true
//  Explanation: Both S and T become "c".
//  Example 4:
//
//  Input: S = "a#c", T = "b"
//  Output: false
//  Explanation: S becomes "c" while T becomes "b".
//  Note:
//
//  1 <= S.length <= 200
//  1 <= T.length <= 200
//  S and T only contain lowercase letters and '#' characters.
//  Follow up:
//
//  Can you solve it in O(N) time and O(1) space?

import XCTest

func backspaceCompare(_ S: String, _ T: String) -> Bool {

    func backspace(_ string: String) -> String {
        var s = [Character]()

        string.forEach { c in
            if c == "#" {
                if !s.isEmpty {
                    s.removeLast()
                }
            } else {
                s.append(c)
            }
        }
        return String(s)
    }
    return backspace(S) == backspace(T)
}

class BackspaceStringCompareTest: XCTestCase {

    func testBackspaceStringCompare() {
        XCTAssertTrue(backspaceCompare("ab#c", "ad#c"))
        XCTAssertTrue(backspaceCompare("ab##", "c#d#"))
        XCTAssertTrue(backspaceCompare("a##c", "#a#c"))
        XCTAssertFalse(backspaceCompare("a#c", "b"))
    }

}
