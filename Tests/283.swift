//
//  283.swift
//  LeetCode
//
//  Created by Lex on 12/28/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

Note:
You must do this in-place without making a copy of the array.
Minimize the total number of operations.

*/

import Foundation
import XCTest

extension Array {

    mutating func swap(_ leftIndex: Int, _ rightIndex: Int) {
        guard leftIndex != rightIndex else { return }
        guard leftIndex < count && rightIndex < count else { return }
        let left = self[leftIndex]
        self[leftIndex] = self[rightIndex]
        self[rightIndex] = left
    }
    
}

// @see https://leetcode.com/discuss/70169/1ms-java-solution
func moveZeros(_ nums: Array<Int>) -> Array<Int> {
    var nums = nums
    var index = 0
    var i = 0

    while i < nums.count {
        if nums[i] != 0 {
            nums.swap(i, index)
            index += 1
        }
        i += 1
    }

    return nums
}

class MoveZerosTest: XCTestCase {

    func testMoveZeros() {
        XCTAssertEqual(moveZeros([0, 1, 2, 0, 3]), [1, 2, 3, 0, 0])
        XCTAssertEqual(moveZeros([0, 0, 0]), [0, 0, 0])
        XCTAssertEqual(moveZeros([]), [])
        XCTAssertEqual(moveZeros([0, 1]), [1, 0])
    }

}
