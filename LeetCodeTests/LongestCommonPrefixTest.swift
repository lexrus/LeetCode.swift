//
//  LongestCommonPrefix.swift
//  LongestCommonPrefix
//
//  Created by Lex Tang on 5/4/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class LongestCommonPrefixTest: XCTestCase {
    
    func testLongestCommonPrefix() {
        self.measureBlock() {
            XCTAssertNil(longestCommonPrefix([]), "")
            XCTAssertNil(longestCommonPrefix(["a", "b", "c"]), "")
            XCTAssertEqual(longestCommonPrefix(["abc", "abb", "abcd"])!, "ab", "")
        }
    }
    
}
