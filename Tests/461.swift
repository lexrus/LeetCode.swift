//
//  461.swift
//  LeetCode
//
//  Created by Lex on 20/02/2017.
//  Copyright © 2017 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

/*
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.

 Given two integers x and y, calculate the Hamming distance.

 Note:
 0 ≤ x, y < 231.

 Example:

 Input: x = 1, y = 4

 Output: 2

 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
        ↑   ↑

 The above arrows point to positions where the corresponding bits are different.
 */

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var xor = x ^ y
    var count = 0

    while xor != 0 {
        count += xor & 1
        xor >>= 1
    }
    return count
}

class TestHammingDistance : XCTestCase {

    func testHammingDistance() {
        XCTAssertEqual(hammingDistance(1, 4), 2)
        XCTAssertEqual(hammingDistance(0, 0), 0)
        XCTAssertEqual(hammingDistance(1, 0), 1)
    }

}
