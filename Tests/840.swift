//
//  MagicSquaresInGrid.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/8.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  A 3 x 3 magic square is a 3 x 3 grid filled with distinct numbers from 1 to 9 such that each row, column, and both diagonals all have the same sum.
//
//  Given an grid of integers, how many 3 x 3 "magic square" subgrids are there?  (Each subgrid is contiguous).
//
//
//
//  Example 1:
//
//  Input: [[4,3,8,4],
//  [9,5,1,9],
//  [2,7,6,2]]
//  Output: 1
//  Explanation:
//  The following subgrid is a 3 x 3 magic square:
//  438
//  951
//  276
//
//  while this one is not:
//  384
//  519
//  762
//
//  In total, there is only one magic square inside the given grid.
//  Note:
//
//  1 <= grid.length <= 10
//  1 <= grid[0].length <= 10
//  0 <= grid[i][j] <= 15

import XCTest

func numMagicSquaresInside(_ grid: [[Int]]) -> Int {
    func isMagic(r: Int, c: Int, _ g: [[Int]]) -> Bool {
        if g[r + 1][c + 1] != 5 {
            return false
        }

        return g[r][c] + g[r][c + 1] + g[r][c + 2] == 15
            && g[r + 1][c] + g[r + 1][c + 1] + g[r + 1][c + 2] == 15
            && g[r + 2][c] + g[r + 2][c + 1] + g[r + 2][c + 2] == 15
            && g[r][c] + g[r + 1][c] + g[r + 2][c] == 15
            && g[r][c + 1] + g[r + 1][c + 1] + g[r + 2][c + 1] == 15
            && g[r][c + 2] + g[r + 1][c + 2] + g[r + 2][c + 2] == 15
            && g[r][c] + g[r + 1][c + 1] + g[r + 2][c + 2] == 15
            && g[r][c + 2] + g[r + 1][c + 1] + g[r + 2][c] == 15
    }

    var count = 0
    guard grid.count >= 3 else { return count }
    for i in 0...grid.count - 3 {
        guard grid[i].count >= 3 else { return count }
        for j in 0...grid[0].count - 3 {
            if isMagic(r: i, c: j, grid) {
                count += 1
            }
        }
    }
    return count
}

class MagicSquaresInGridTest: XCTestCase {

    func testMagicSquaresInGrid() {
        XCTAssertEqual(numMagicSquaresInside([[4,3,8,4],
                                              [9,5,1,9],
                                              [2,7,6,2]]), 1)
        XCTAssertEqual(numMagicSquaresInside([[4,3,8,4,3,8],
                                              [9,5,1,9,5,1],
                                              [2,7,6,2,7,6]]), 2)
        XCTAssertEqual(numMagicSquaresInside([[4,3,8],
                                              [9,5,1],
                                              [2,7,6]]), 1)
        XCTAssertEqual(numMagicSquaresInside([[4,3,8],
                                              [2]]), 0)
    }

}
