//
//  TransposeMatrix.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/8.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Given a matrix A, return the transpose of A.
//
//  The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row and column indices of the matrix.
//
//  Example 1:
//
//  Input: [[1,2,3],[4,5,6],[7,8,9]]
//  Output: [[1,4,7],[2,5,8],[3,6,9]]

//  Example 2:
//
//  Input: [[1,2,3],[4,5,6]]
//  Output: [[1,4],[2,5],[3,6]]

import XCTest

func transpose(_ A: [[Int]]) -> [[Int]] {
    if A.isEmpty || A[0].isEmpty {
        return A
    }

    var result = [[Int]](repeating: [Int](repeating: 0, count: A.count), count: A[0].count)

    for i in 0..<A[0].count {
        for j in 0..<A.count {
            result[i][j] = A[j][i]
        }
    }
    return result
}

class TransposeMatrixTest: XCTestCase {

    func testTransposeMatrix() {
        XCTAssertEqual(transpose([[1,2,3],[4,5,6],[7,8,9]]), [[1,4,7],[2,5,8],[3,6,9]])
        XCTAssertEqual(transpose([[1,2,3],[4,5,6]]), [[1,4],[2,5],[3,6]])
    }

}
