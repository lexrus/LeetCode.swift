//
//  476.swift
//  LeetCode
//
//  Created by Lex on 3/2/17.
//  Copyright © 2017 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

/*
 Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.
 
 Note:
 The given integer is guaranteed to fit within the range of a 32-bit signed integer.
 You could assume no leading zero bit in the integer’s binary representation.
 
 Example 1:
 Input: 5
 Output: 2
 Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
 
 Example 2:
 Input: 1
 Output: 0
 Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.
 */

func findComplement(_ num: Int) -> Int {
    var mask: UInt32 = ~0
    while num & Int(mask) > 0 {
        mask <<= 1
    }
    return Int(~mask) & ~num
}

class TestNumberComplement : XCTestCase {
    
    func testNumberComplement() {
        XCTAssertEqual(findComplement(5), 2)
        XCTAssertEqual(findComplement(1), 0)
    }
    
}
