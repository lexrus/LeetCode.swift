//
//  PositionsOfLargeGroups.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/9.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  In a string S of lowercase letters, these letters form consecutive groups of the same character.
//
//  For example, a string like S = "abbxxxxzyy" has the groups "a", "bb", "xxxx", "z" and "yy".
//
//  Call a group large if it has 3 or more characters.  We would like the starting and ending positions of every large group.
//
//  The final answer should be in lexicographic order.
//
//
//
//  Example 1:
//
//  Input: "abbxxxxzzy"
//  Output: [[3,6]]
//  Explanation: "xxxx" is the single large group with starting  3 and ending positions 6.
//  Example 2:
//
//  Input: "abc"
//  Output: []
//  Explanation: We have "a","b" and "c" but no large group.
//  Example 3:
//
//  Input: "abcdddeeeeaabbbcd"
//  Output: [[3,5],[6,9],[12,14]]
//
//
//  Note:  1 <= S.length <= 1000

import XCTest

func largeGroupPositions(_ S: String) -> [[Int]] {
    if S.count < 3 {
        return []
    }
    var l = 0
    var r = 0
    var result = [[Int]]()
    while true {
        if S[l] == S[r] {
            r += 1
            if r == S.count - 1 && r - l >= 3 {
                result.append([l, r - 1])
            }
        } else {
            if r - l >= 3 {
                result.append([l, r - 1])
            }
            l = r
        }
        if r == S.count - 1 {
            break
        }
    }
    return result
}

class PositionsOfLargeGroupsTest: XCTestCase {

    func testPositionsOfLargeGroups() {
        XCTAssertEqual(largeGroupPositions("abbxxxxzzy"), [[3,6]])
        XCTAssertEqual(largeGroupPositions("abc"), [])
        XCTAssertEqual(largeGroupPositions("abcdddeeeeaabbbcd"), [[3,5],[6,9],[12,14]])
    }

}
