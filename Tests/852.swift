//
//  PeakIndexInAMountainArray.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/8.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Let's call an array A a mountain if the following properties hold:
//
//  A.length >= 3
//  There exists some 0 < i < A.length - 1 such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1]
//  Given an array that is definitely a mountain, return any i such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1].
//
//  Example 1:
//
//  Input: [0,1,0]
//  Output: 1
//  Example 2:
//
//  Input: [0,2,1,0]
//  Output: 1
//  Note:
//
//  3 <= A.length <= 10000
//  0 <= A[i] <= 10^6
//  A is a mountain, as defined above.

import XCTest

func peakIndexInMountainArray(_ A: [Int]) -> Int {
    var result = 0
    var climbing = true
    if A.count < 3 {
        return result
    }
    for i in 1..<A.count {
        if climbing {
            if A[i-1] < A[i] && A[i] > result {
                result = i
            } else if A[i-1] >= A[i] {
                climbing = false
            }
        } else {
            if A[i-1] < A[i] {
                result = -1
            }
        }
    }
    return result
}

class PeakIndexInAMountainArrayTest: XCTestCase {

    func testPeakIndexInAMountainArray() {
        XCTAssertEqual(peakIndexInMountainArray([0, 1, 0]), 1)
        XCTAssertEqual(peakIndexInMountainArray([0, 2, 1, 0]), 1)
    }

}
