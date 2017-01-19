//
//  StrStr.swift
//  StrStr
//
//  Created by Lex Tang on 5/4/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Implement strStr().

Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Update (2014-11-02):
The signature of the function had been updated to return the index instead of the pointer. If you still see your function signature returns a char * or String, please click the reload button  to reset your code definition.
*/

import Foundation
import XCTest


// Brute Force
// Time complexity：O(mn), Space complexity: O(1)
func strStr0(_ haystack: String, needle: String) -> Int {
    let m = haystack.characters.count, n = needle.characters.count
    if n > 0 {
        var i = 0, j = 0
        while i < m - n {
            while j < n && haystack[i + j] == needle[j] {
                j += 1
            }
            if j == n {
                return i
            }
            i += 1
        }
    }
    return -1
}


// TODO: KMP


// TODO: Boyer Moore


// TODO: Rabin Karp


class StrStrTest: XCTestCase {

    func testStrStr() {
        XCTAssertEqual(strStr0("abcdefg", needle: "bcd"), 1, "")
        XCTAssertEqual(strStr0("aaa", needle: "a"), 0, "")
        XCTAssertEqual(strStr0("abcdefg", needle: ""), -1, "")
        XCTAssertEqual(strStr0("", needle: ""), -1, "")
        XCTAssertEqual(strStr0("a", needle: "adfasdfasf"), -1, "")
    }

}
