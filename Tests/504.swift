//
//  504.swift
//  LeetCode
//
//  Created by Lex on 3/1/17.
//  Copyright © 2017 Lex Tang. All rights reserved.
//

/*
 Given an integer, return its base 7 string representation.
 
 Example 1:
 Input: 100
 Output: "202"
 Example 2:
 Input: -7
 Output: "-10"
 Note: The input will be in range of [-1e7, 1e7].
 */

import Foundation
import XCTest

func base7(_ n: Int) -> String {
    if n < 0 {
        return "-" + base7(-n)
    }
    
    if n < 7 {
        return String(n)
    }
    
    return base7(n / 7) + String(n % 7)
}

class TestBase7 : XCTestCase {
    
    func testBase7() {
        XCTAssertEqual(base7(0), "0")
        XCTAssertEqual(base7(7), "10")
        XCTAssertEqual(base7(-7), "-10")
        XCTAssertEqual(base7(14), "20")
        XCTAssertEqual(base7(15), "21")
    }
    
}
