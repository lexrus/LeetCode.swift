//
//  LongestPalindromicSubstring.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/6/28.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Given a string s, find the longest palindromic substring in s.
//  You may assume that the maximum length of s is 1000.
//
//  Example 1:
//
//  Input: "babad"
//  Output: "bab"
//  Note: "aba" is also a valid answer.
//  Example 2:
//
//  Input: "cbbd"
//  Output: "bb"


import Foundation
import XCTest


// @seealso https://leetcode.com/problems/longest-palindromic-substring/discuss/2928/Very-simple-clean-java-solution
func longestPalindrome(_ s: String) -> String {
    var lo = 0
    var maxLen = 0
    let len = s.count

    if len < 2 {
        return s
    }

    func extendPalindrome(_ s: String, l: Int, r: Int) {
        var chars = s.utf8CString
        var l = l
        var r = r
        while l >= 0 && r < s.count && chars[l] == chars[r] {
            l -= 1
            r += 1
        }
        if maxLen < r - l - 1 {
            lo = l + 1
            maxLen = r - l - 1
        }
    }

    s.enumerated().forEach { i, c in
        extendPalindrome(s, l: i, r: i)
        extendPalindrome(s, l: i, r: i + 1)
    }

    let lIndex = s.index(s.startIndex, offsetBy: lo)
    let rIndex = s.index(s.startIndex, offsetBy: lo + maxLen)

    return String(s[lIndex..<rIndex])

}

class LongestPalindromicSubstringTest: XCTestCase {

    func testLongestPalindromicSubstring() {
        XCTAssertEqual(longestPalindrome("babad"), "bab")
        XCTAssertEqual(longestPalindrome("cbbd"), "bb")
        XCTAssertEqual(longestPalindrome("aaaaa"), "aaaaa")
        XCTAssertEqual(longestPalindrome("aa"), "aa")
        XCTAssertEqual(longestPalindrome("aaaa"), "aaaa")
    }

}
