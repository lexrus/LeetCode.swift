//
//  IntegerToRoman.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/2.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//  Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
//
//  Symbol       Value
//  I             1
//  V             5
//  X             10
//  L             50
//  C             100
//  D             500
//  M             1000
//  For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.
//
//  Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
//
//  I can be placed before V (5) and X (10) to make 4 and 9.
//  X can be placed before L (50) and C (100) to make 40 and 90.
//  C can be placed before D (500) and M (1000) to make 400 and 900.
//  Given an integer, convert it to a roman numeral. Input is guaranteed to be within the range from 1 to 3999.

import XCTest

// @seealso https://leetcode.com/problems/integer-to-roman/discuss/6274/Simple-Solution
func intToRoman(_ num: Int) -> String {
    struct RomanIntegers {
        static let I = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
        static let X = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
        static let C = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
        static let M = ["", "M", "MM", "MMM"]
    }

    if num <= 0 || num > 3999 {
        return ""
    }
    return RomanIntegers.M[num / 1000]
        +  RomanIntegers.C[(num % 1000) / 100]
        +  RomanIntegers.X[(num % 100) / 10]
        +  RomanIntegers.I[num % 10]
}

// @seealso https://leetcode.com/problems/integer-to-roman/discuss/6310/My-java-solution-easy-to-understand
func intToRoman2(_ num: Int) -> String {
    let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    let strings = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    var n = num
    var result = ""
    values.enumerated().forEach { i, v in
        while n >= v {
            n -= v
            result += strings[i]
        }
    }
    return result
}

class IntegerToRomanTest: XCTestCase {

    func testIntegerToRoman() {
        [
            3: "III",
            4: "IV",
            9: "IX",
            58: "LVIII",
            1994: "MCMXCIV"
        ].forEach { k, v in
            XCTAssertEqual(intToRoman(k), v)
            XCTAssertEqual(intToRoman2(k), v)
        }
    }

}
