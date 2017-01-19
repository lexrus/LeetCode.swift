//
//  CompareVersionNumbersTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/13/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//


/*
Compare two version numbers version1 and version2.
If version1 > version2 return 1, if version1 < version2 return -1, otherwise return 0.

You may assume that the version strings are non-empty and contain only digits and the . character.
The . character does not represent a decimal point and is used to separate number sequences.
For instance, 2.5 is not "two and a half" or "half way to version three", it is the fifth second-level revision of the second first-level revision.

Here is an example of version numbers ordering:

0.1 < 1.1 < 1.2 < 13.37
*/

import Foundation
import XCTest


func compareVersionNumbers(_ lhs: String, rhs: String) -> Int {

    let lhsA = lhs.components(separatedBy: ".")
    let rhsA = rhs.components(separatedBy: ".")

    for i in 0 ..< max(lhsA.count, rhsA.count) {
        let lInt: Int, rInt: Int
        if i >= lhsA.count {
            lInt = 0
        } else {
            lInt = atoi(lhsA[i])
        }

        if i >= rhsA.count {
            rInt = 0
        } else {
            rInt = atoi(rhsA[i])
        }

        if lInt > rInt {
            return 1
        } else if lInt < rInt {
            return -1
        }
    }

    return 0
}


class CompareVersionNumbersTest: XCTestCase {

    func testCompareVersionNumbers() {
        XCTAssertEqual(compareVersionNumbers("0.1", rhs: "1.0"), -1, "")
        XCTAssertEqual(compareVersionNumbers("0.1", rhs: "1.1"), -1, "")
        XCTAssertEqual(compareVersionNumbers("1.0", rhs: "1.1"), -1, "")
        XCTAssertEqual(compareVersionNumbers("1.1.1", rhs: "1.1.2"), -1, "")
        XCTAssertEqual(compareVersionNumbers("1.1", rhs: "1.1.2"), -1, "")
        XCTAssertEqual(compareVersionNumbers("13.23", rhs: "13.24"), -1, "")
        XCTAssertEqual(compareVersionNumbers("13.23", rhs: "13.23.4"), -1, "")
        XCTAssertEqual(compareVersionNumbers("13.23", rhs: "13.23.0"), 0, "")
        XCTAssertEqual(compareVersionNumbers("13.23", rhs: "13.23.0.1"), -1, "")
        XCTAssertEqual(compareVersionNumbers("0.0.1", rhs: "0.0.2"), -1, "")
        XCTAssertEqual(compareVersionNumbers("0.0.2", rhs: "0.0.12"), -1, "")
        XCTAssertEqual(compareVersionNumbers("1", rhs: "1"), 0, "")
        XCTAssertEqual(compareVersionNumbers("2", rhs: "1.99"), 1, "")
    }

}
