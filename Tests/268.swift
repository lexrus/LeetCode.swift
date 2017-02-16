//
//  268.swift
//  LeetCode
//
//  Created by Lex on 2/16/17.
//  Copyright © 2017 Lex Tang. All rights reserved.
//

/*
 Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

 For example,
 Given nums = [0, 1, 3] return 2.

 Note:
 Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
 */

import Foundation
import XCTest


func missingNumber(_ nums: [Int]) -> Int {
    var r = 0

    nums.enumerated().forEach { i, v in
        r = r ^ i ^ v
    }

    return r ^ nums.count
}

class MissingNumberText : XCTestCase {

    func testMissingNumber() {
        XCTAssertEqual(missingNumber([0, 1, 2, 4]), 3)
        XCTAssertEqual(missingNumber([0, 1, 2, 3, 4, 6]), 5)
    }
    
}
