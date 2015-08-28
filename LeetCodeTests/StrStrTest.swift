//
//  StrStr.swift
//  StrStr
//
//  Created by Lex Tang on 5/4/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class StrStrTest: XCTestCase {
    
    func testStrStr() {
        self.measureBlock() {
            XCTAssertEqual(strStr0("abcdefg", needle: "bcd"), 1, "")
            XCTAssertEqual(strStr0("aaa", needle: "a"), 0, "")
            XCTAssertEqual(strStr0("abcdefg", needle: ""), -1, "")
            XCTAssertEqual(strStr0("", needle: ""), -1, "")
            XCTAssertEqual(strStr0("a", needle: "adfasdfasf"), -1, "")
        }
    }
    
}
