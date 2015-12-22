//
//  49.swift
//  LeetCode
//
//  Created by Lex on 12/22/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Group Anagrams

Given an array of strings, group anagrams together.

For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"],
Return:

[
["ate", "eat","tea"],
["nat","tan"],
["bat"]
]
Note:
For the return value, each inner list's elements must follow the lexicographic order.
All inputs will be in lower-case.
*/

import Foundation
import XCTest

func groupAnagrams(a: [String]) -> [[String]] {
    var array = a.reverse() as [String]
    var group = [[String]]()
    while true {
        guard let last = array.popLast() else {
            break
        }

        group.append([last])

        var i = array.count
        while i > 0 {
            i--
            if isAnagram(array[i], last) {
                if var lastGroup = group.popLast() {
                    lastGroup.append(array[i])
                    lastGroup = lastGroup.sort()
                    group.append(lastGroup)
                    array.removeAtIndex(i)
                }
            }
        }
    }
    return group
}

class GroupAnagramsTest: XCTestCase {

    func testGroupAnagrams() {
        var group = groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
        XCTAssertEqual(group,
            [
                ["ate", "eat", "tea"],
                ["nat", "tan"],
                ["bat"]
            ]
        )

        group = groupAnagrams(["a", "b", "c"])
        XCTAssertEqual(group, [["a"], ["b"], ["c"]])

        group = groupAnagrams(["", "cb", "bc"])
        XCTAssertEqual(group, [[""], ["bc", "cb"]])
    }

}
