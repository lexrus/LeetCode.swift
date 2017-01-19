//
//  189.swift
//  LeetCode
//
//  Created by Lex on 12/30/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Rotate an array of n elements to the right by k steps.

For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].

Note:
Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.

Hint:
Could you do it in-place with O(1) extra space?
Related problem: Reverse Words in a String II
*/

import Foundation
import XCTest

extension Array {

    mutating func rotate(_ k: Int) {
        let start = self.count - k
        if start < 1 {
            return
        }
        var extra = Array<Element>(self[start..<(start + k)])
        extra.append(contentsOf: self[0..<(count - k)])
        self = extra
    }

}

class RotateArray: XCTestCase {

    func testRotateArray() {
        var a = [1, 2, 3, 4, 5, 6, 7]
        a.rotate(3)
        XCTAssertEqual(a, [5, 6, 7, 1, 2, 3, 4])

        a = [1, 2, 3, 4, 5, 6, 7]
        a.rotate(1)
        XCTAssertEqual(a, [7, 1, 2, 3, 4, 5, 6])

        a = [1]
        a.rotate(1)
        XCTAssertEqual(a, [1])

        a = []
        a.rotate(1)
        XCTAssertEqual(a, [])

        a = [1, 2, 3]
        a.rotate(3)
        XCTAssertEqual(a, [1, 2, 3])
    }

}
