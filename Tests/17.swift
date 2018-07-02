//
//  LetterCombinationsOfAPhoneNumber.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/3.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent.
//
//  A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
//
//  Example:
//
//  Input: "23"
//  Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
//  Note:
//
//  Although the above answer is in lexicographical order, your answer could be in any order you want.

import XCTest

// @seealso https://leetcode.com/problems/letter-combinations-of-a-phone-number/discuss/8064/My-java-solution-with-FIFO-queue
func letterCombinations(_ digits: String) -> [String] {
    var result: [String] = []
    if digits.isEmpty {
        return result
    }
    let mapping = ["0", "1", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
    result.append("")
    digits.enumerated().forEach { i, d in
        while result.first(where: { $0.count == i }) != nil {
            guard let x = Int(String(d)), x < mapping.count else { continue }
            let t = result.removeFirst()
            mapping[x].forEach { c in
                result.append(t + String(c))
            }
        }
    }
    return result
}

class LetterCombinationsOfAPhoneNumberTest: XCTestCase {

    func testLetterCombinationsOfAPhoneNumber() {
        XCTAssertEqual(letterCombinations("23"), ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"])
    }

}
