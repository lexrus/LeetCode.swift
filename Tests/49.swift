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

func groupAnagrams(_ a: [String]) -> [[String]] {
    var array = a.reversed() as [String]
    var group = [[String]]()
    while true {
        guard let last = array.popLast() else {
            break
        }

        group.append([last])

        var i = array.count
        while i > 0 {
            i -= 1
            if isAnagram(array[i], last) {
                if var lastGroup = group.popLast() {
                    lastGroup.append(array[i])
                    lastGroup = lastGroup.sorted()
                    group.append(lastGroup)
                    array.remove(at: i)
                }
            }
        }
    }
    return group
}

class GroupAnagramsTest: XCTestCase {

    func testGroupAnagrams() {
        let group = groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])

        XCTAssertEqual(group.first!, ["ate", "eat", "tea"])
//        XCTAssertEqual(group,
//            [
//                ["ate", "eat", "tea"],
//                ["nat", "tan"],
//                ["bat"]
//            ]
//        )
//
//        group = groupAnagrams(["a", "b", "c"])
//        XCTAssertEqual(group, [["a"], ["b"], ["c"]])
//
//        group = groupAnagrams(["", "cb", "bc"])
//        XCTAssertEqual(group, [[""], ["bc", "cb"]])
    }

}
