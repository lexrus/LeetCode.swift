//
//  67.swift
//  LeetCode
//
//  Created by Lex on 9/5/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Given two binary strings, return their sum (also a binary string).

For example,
a = "11"
b = "1"
Return "100".
*/

import XCTest

func addBinary(_ a: String, _ b: String) -> String {
    let ai = Int(a, radix: 2) ?? 0
    let bi = Int(b, radix: 2) ?? 0
    let result = ai + bi
    return String(result, radix: 2)
}

class AddBinaryTest: XCTestCase {

    func testExample() {
        XCTAssert(addBinary("11", "1") == "100")
        XCTAssert(addBinary("1111111", "222") == "1111111")
        XCTAssert(addBinary("", "1") == "1")
        XCTAssert(addBinary("0", "0") == "0")
    }

}
