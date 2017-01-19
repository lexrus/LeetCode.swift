//
//  LongestCommonPrefix.swift
//  LongestCommonPrefix
//
//  Created by Lex Tang on 5/4/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Write a function to find the longest common prefix string amongst an array of strings.

@see also: https://github.com/haoel/leetcode/blob/master/algorithms/longestCommonPrefix/longestCommonPrefix.cpp
*/

import Foundation
import XCTest


func longestCommonPrefix(_ list: [String]) -> String? {

    var foundWord = ""
    var match = false

    if list.count == 0 || list[0].isEmpty {
        return .none
    }

    for (i, char) in list[0].characters.enumerated() {
        for (_, str) in list.enumerated() {
            match = str[i] == char
            if !match {
                break
            }
        }

        if match {
            foundWord.append(char)
        }
    }

    return foundWord.isEmpty ? .none : foundWord
}


class LongestCommonPrefixTest: XCTestCase {

    func testLongestCommonPrefix() {
        XCTAssertNil(longestCommonPrefix([]), "")
        XCTAssertNil(longestCommonPrefix(["a", "b", "c"]), "")
        XCTAssertEqual(longestCommonPrefix(["abc", "abb", "abcd"])!, "ab", "")
    }
    
}
