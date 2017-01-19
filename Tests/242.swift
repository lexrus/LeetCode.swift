//
//  242.swift
//  LeetCode
//
//  Created by Lex on 12/22/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Valid Anagram

Given two strings s and t, write a function to determine if t is an anagram of s.

For example,
s = "anagram", t = "nagaram", return true.
    s = "rat", t = "car", return false.

Note:
You may assume the string contains only lowercase alphabets.

Follow up:
What if the inputs contain unicode characters? How would you adapt your solution to such case?
*/

import Foundation
import XCTest


func isAnagram(_ s: String, _ t: String) -> Bool {
    // They must have the same size
    if s.characters.count != t.characters.count {
        return false
    }

    var src = s
    t.characters.forEach {
        if let charRange = src.range(of: String($0)) {
            src.remove(at: charRange.lowerBound)
        }
    }

    if src.characters.count == 0 {
        return true
    }
    return false
}

class ValidAnagramTest: XCTestCase {

    func testIsAnagram() {
        XCTAssert(isAnagram("anagram", "nagaram"))
        XCTAssert(isAnagram("rat", "tar"))
        XCTAssert(isAnagram("贪吃蛇", "蛇贪吃"))
        XCTAssert(isAnagram("🤕⌚️👽", "👽🤕⌚️"))
        XCTAssert(!isAnagram("🤕⌚️A", "👽🤕⌚️"))
    }

}
