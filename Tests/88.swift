//
//  MergeSortedArray.swift
//  MergeSortedArray
//
//  Created by Lex Tang on 4/22/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given two sorted integer arrays A and B, merge B into A as one sorted array.

Note:
You may assume that A has enough space (size that is greater or equal to m + n) to hold additional elements from B.
The number of elements initialized in A and B are m and n respectively.
*/

import Foundation
import XCTest


func mergeSortedArray(_ a: Array<Int>, b: Array<Int>) -> Array<Int> {
    let m = a.count
    let n = b.count
    var c = Array(repeating: 0, count: m + n)

    var i = m + n - 1
    var j = m - 1
    var k = n - 1

    while i >= 0 {
        if j < 0 {
            c[i] = b[k]
            k -= 1
        } else if k < 0 {
            c[i] = a[j]
            j -= 1
        } else {
            if a[j] > b[k] {
                c[i] = a[j]
                j -= 1
            } else {
                c[i] = b[k]
                k -= 1
            }
        }
        i -= 1
    }

    return c
}


class MergeSortedArrayTest: XCTestCase {

    func testMergeSortedArray() {
        var a: Array<Int>, b: Array<Int>, c: Array<Int>

        a = [1, 3, 5, 7, 9]
        b = [2, 4, 6, 8, 10]
        c = mergeSortedArray(a, b: b)
        XCTAssertEqual(c, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "")

        a = []
        b = []
        c = mergeSortedArray(a, b: b)
        XCTAssertEqual(c, [], "")

        a = [3]
        b = [2]
        c = mergeSortedArray(a, b: b)
        XCTAssertEqual(c, [2, 3], "")

        a = [2]
        b = [1, 5, 12]
        c = mergeSortedArray(a, b: b)
        XCTAssertEqual(c, [1, 2, 5, 12], "")
    }

}
