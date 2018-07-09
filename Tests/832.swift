//
//  FlippingAnImage.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/9.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Given a binary matrix A, we want to flip the image horizontally, then invert it, and return the resulting image.
//
//  To flip an image horizontally means that each row of the image is reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].
//
//  To invert an image means that each 0 is replaced by 1, and each 1 is replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].
//
//  Example 1:
//
//  Input: [[1,1,0],[1,0,1],[0,0,0]]
//  Output: [[1,0,0],[0,1,0],[1,1,1]]
//  Explanation: First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
//  Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]
//
//  Example 2:
//
//  Input: [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
//  Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
//  Explanation: First reverse each row: [[0,0,1,1],[1,0,0,1],[1,1,1,0],[0,1,0,1]].
//  Then invert the image: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
//  Notes:
//
//  1 <= A.length = A[0].length <= 20
//  0 <= A[i][j] <= 1

import XCTest

func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    if A.isEmpty {
        return A
    }
    if A[0].isEmpty {
        return A
    }
    var a = A
    for i in 0..<a.count {
        let isOdd = a[0].count % 2 != 0
        for j in 0..<a[i].count / 2 {
            let temp = a[i][j] == 0 ? 1 : 0
            a[i][j] = a[i][a.count - j - 1] == 0 ? 1 : 0
            a[i][a.count - j - 1] = temp
        }
        if isOdd {
            a[i][a[i].count / 2] = a[i][A[i].count / 2] == 0 ? 1 : 0
        }
    }
    return a
}

class FlippingAnImage: XCTestCase {

    func testFlippingAnImage() {
        XCTAssertEqual(flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]]), [[1,0,0],[0,1,0],[1,1,1]])
        XCTAssertEqual(flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]), [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]])
    }

}
