//
//  StringToIntegerAtoi.swift
//  StringToIntegerAtoi
//
//  Created by Lex Tang on 4/27/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Implement atoi to convert a string to an integer.

Hint: Carefully consider all possible input cases. If you want a challenge, please do not see below and ask yourself what are the possible input cases.

Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). You are responsible to gather all the input requirements up front.

Requirements for atoi:
The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.

The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.

If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.

If no valid conversion could be performed, a zero value is returned. If the correct value is out of the range of representable values, INT_MAX (2147483647) or INT_MIN (-2147483648) is returned.
*/

import Foundation
import XCTest

func atoi(_ s: String) -> Int {
    if s.isEmpty || s == "0" {
        return 0
    }

    var result = 0, negative = false
    let zeroValue = 48

    let s = s.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)

    if s.substring(to: s.characters.index(s.startIndex, offsetBy: 1)) == "-" {
        negative = true
    }

    for c in s.unicodeScalars {
        let value = Int(c.value) - zeroValue

        // Ignore non-numerical
        if value < 0 || value > 9 {
            continue
        }

        if negative {
            if -result < (Int.min + value) / 10 + 1 {
                return Int.min
            }
        } else {
            if result > (Int.max - value) / 10 {
                return Int.max
            }
        }

        result = result * 10 + value
    }

    return negative ? -result : result
}


class StringToIntegerAtoiTest: XCTestCase {

    func testStringToInteger() {
        XCTAssertEqual(-2, atoi(" -02"), "")
        XCTAssertEqual(0, atoi(""), "")
        XCTAssertEqual(23, atoi(" 23-"), "")
        XCTAssertEqual(0, atoi(" asdfaasdf"), "")
        XCTAssertEqual(123, atoi("123"), "")
        XCTAssertEqual(123, atoi("   123"), "")
        XCTAssertEqual(123, atoi("123    "), "")
        XCTAssertEqual(123, atoi("+123"), "")
        XCTAssertEqual(123, atoi("123ABC"), "")
        XCTAssertEqual(123, atoi(" abc123ABC"), "")
        XCTAssertEqual(9223372036854775807, atoi("9223372036854775807"), "")
        XCTAssertEqual(-9223372036854775808, atoi("-9223372036854775808"), "")
        XCTAssertEqual(9223372036854775807, atoi("9223372036854775808"), "")
        XCTAssertEqual(-9223372036854775808, atoi("-9223372036854775809"), "")
    }

}
