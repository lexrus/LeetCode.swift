//
//  SearchInsertPosition.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/6/29.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//  You may assume no duplicates in the array.

import XCTest

// @seealso https://leetcode.com/problems/search-insert-position/discuss/142718/JavaScript-solution-(52ms-99.82)
class SearchInsertPositionTest: XCTestCase {

    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty {
            return -1
        }
        if nums[0] == target {
            return 0
        }

        var left = 0
        var right = nums.count - 1
        var mid = 0

        while left <= right {
            mid = (right - left) / 2 + left
            if nums[mid] == target {
                return mid
            }
            if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return left
    }

    func testSearchInsertPosition() {
        XCTAssertEqual(searchInsert([1, 3, 5, 6], 5), 2)
        XCTAssertEqual(searchInsert([1, 3, 5, 6], 2), 1)
        XCTAssertEqual(searchInsert([1, 3, 5, 6], 7), 4)
        XCTAssertEqual(searchInsert([1, 3, 5, 6], 0), 0)
        XCTAssertEqual(searchInsert([], 5), -1)
        XCTAssertEqual(searchInsert([0], 0), 0)
    }

}
