//
//  PlusOneTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/6/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given a non-negative number represented as an array of digits, plus one to the number.

The digits are stored such that the most significant digit is at the head of the list.
*/

import Foundation
import XCTest


func plusOne(digits: [Int]) -> [Int] {
    var result: [Int] = digits
    var carry = 1
    
    for var i = result.count - 1; i >= 0; i-- {
        if result[i] < 9 {
            let digit = result[i] + 1
            result.removeAtIndex(i)
            result.insert(digit, atIndex: i)
            return result
        }
        let digit = (result[i] + carry) % 10
        carry = (result[i] + 1) / 10
        result[i] = digit
        if carry == 0 {
            return result
        }
    }
    if carry > 0 {
        result.insert(1, atIndex: 0)
    }
    
    return result
}


class PlusOneTest: XCTestCase {

    func testPlusOne() {
        self.measureBlock() {
            XCTAssertEqual(plusOne([1, 2, 3]), [1, 2, 4], "")
            XCTAssertEqual(plusOne([9]), [1, 0], "")
            XCTAssertEqual(plusOne([0]), [1], "")
            XCTAssertEqual(plusOne([9, 9, 9, 9]), [1, 0, 0, 0, 0], "")
        }
    }

}
