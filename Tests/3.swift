//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/6/28.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Given a string, find the length of the longest substring without repeating characters.
//
//  Examples:
//
//  Given "abcabcbb", the answer is "abc", which the length is 3.
//
//  Given "bbbbb", the answer is "b", with the length of 1.
//
//  Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

import Foundation
import XCTest


// @seealso https://leetcode.com/problems/longest-substring-without-repeating-characters/solution/
func lengthOfLongestSubstring(_ s: String) -> Int {
    var longest = 0
    var m = 0

    var index = [Int].init(repeating: 0, count: 128)

    s.cString(using: .ascii)?.enumerated().forEach { i, c in
        guard c != 0 else { return }
        m = max(index[Int(c)], m)
        longest = max(longest, i - m + 1)
        index[Int(c)] = i + 1
    }
    return longest
}

class LongestSubstringWithoutRepeatingCharactersTest_: XCTestCase {

    func testLongestSubstringWithoutRepeatingCharacters() {
        XCTAssertEqual(lengthOfLongestSubstring("abcabcbb"), 3)
        XCTAssertEqual(lengthOfLongestSubstring("bbbbbb"), 1)
        XCTAssertEqual(lengthOfLongestSubstring("pwwkew"), 3)
    }

}
