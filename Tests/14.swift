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


func longestCommonPrefix(list: [String]) -> String? {
    
    var foundWord = ""
    var match = false
    
    if list.count == 0 || list[0].isEmpty {
        return .None
    }
    
    for (i, char) in list[0].characters.enumerate() {
        for var j = 1; j < list.count; j++ {
            if list[j][i] == char {
                match = true
            } else {
                match = false
                break
            }
        }
        
        if match {
            foundWord.append(char)
        }
    }
    
    return foundWord.isEmpty ? .None : foundWord
}


class LongestCommonPrefixTest: XCTestCase {
    
    func testLongestCommonPrefix() {
        self.measureBlock() {
            XCTAssertNil(longestCommonPrefix([]), "")
            XCTAssertNil(longestCommonPrefix(["a", "b", "c"]), "")
            XCTAssertEqual(longestCommonPrefix(["abc", "abb", "abcd"])!, "ab", "")
        }
    }
    
}
