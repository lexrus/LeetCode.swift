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

extension Character {
    var ascii: Int? {
        return unicodeScalars.filter { $0.isASCII }.first.map { Int($0.value) }
    }
}

func addBinary(_ a: String, _ b: String) -> String {
    var z = 0
    var s = ""
    var i = a.count - 1
    var j = b.count - 1

    let zero = Character("0").ascii!

    while i >= 0 && j >= 0 {
        let x = a[i]!.ascii! - zero
        let y = b[j]!.ascii! - zero
        s = "\(x^y^z)\(s)"
        z = (x&y)|(y&z)|(z&x)
        i -= 1
        j -= 1
    }
    while i >= 0 {
        s = "\((a[i]!.ascii! - zero) ^ z)\(s)"
        z = (a[i]!.ascii! - zero) & z
        i -= 1
    }
    while j >= 0 {
        s = "\((b[j]!.ascii! - zero) ^ z)\(s)"
        z = (b[j]!.ascii! - zero) & z
        j -= 1
    }
    if z == 1 {
        s = "\(z)\(s)"
    }
    return s
}

class AddBinaryTest: XCTestCase {

    func testExample() {
        XCTAssertEqual(addBinary("11", "1"), "100")
        XCTAssertEqual(addBinary("1111111", "0"), "1111111")
        XCTAssertEqual(addBinary("", "1"), "1")
        XCTAssertEqual(addBinary("0", "0"), "0")
        XCTAssertEqual(
            addBinary(
                "10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101",
                "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011"
            ),
            "110111101100010011000101110110100000011101000101011001000011011000001100011110011010010011000000000"
        )
    }

}
