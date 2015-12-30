//
//  189.swift
//  LeetCode
//
//  Created by Lex on 12/30/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

extension Array {

    mutating func rotate(k: Int) {
        let start = self.count - k
        if start < 1 {
            return
        }
        var extra = Array<Element>(self[start..<(start + k)])
        extra.appendContentsOf(self[0..<(count - k)])
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
