//
//  136.swift
//  LeetCode
//
//  Created by Lex on 2/15/17.
//  Copyright © 2017 Lex Tang. All rights reserved.
//

/*
Given an array of integers, every element appears twice except for one. Find that single one.

Note:
Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 */

import Foundation
import XCTest


func singleNumber(_ nums: [Int]) -> Int {
    var result = 0

    nums.forEach { result ^= $0 }
    return result
}

class SingleNumberTest: XCTestCase {

    func testSingleNumber() {
        XCTAssertEqual(singleNumber([2, 3, 2, 3, 4, 5, 5]), 4)
        XCTAssertEqual(singleNumber([-1, 2, 3, -1, 3]), 2)
    }

}
