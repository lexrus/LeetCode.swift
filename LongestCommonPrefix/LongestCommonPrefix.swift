//
//  LongestCommonPrefix.swift
//  LeetCode
//
//  Created by Lex Tang on 5/4/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Write a function to find the longest common prefix string amongst an array of strings.

@see also: https://github.com/haoel/leetcode/blob/master/algorithms/longestCommonPrefix/longestCommonPrefix.cpp
*/

import Foundation

private extension String {
    subscript (i: Int) -> Character? {
        if i > self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) - 1 {
            return .None
        }
        var index: Index = advance(self.startIndex, i)
        return self[index]
    }
}

func longestCommonPrefix(list: [String]) -> String? {
    
    var foundWord = ""
    var match = false

    if list.count == 0 || list[0].isEmpty {
        return .None
    }
    
    for (i, char) in enumerate(list[0]) {
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