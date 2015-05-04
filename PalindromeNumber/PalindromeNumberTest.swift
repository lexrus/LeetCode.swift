//
//  PalindromeNumber.swift
//  PalindromeNumber
//
//  Created by Lex Tang on 5/4/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class PalindromeNumberTest: XCTestCase {
    
    func testPalindromeNumber() {
        self.measureBlock() {
            XCTAssertFalse(isPalindrome(-121), "")
            XCTAssertTrue(isPalindrome(123321), "")
            XCTAssertTrue(isPalindrome(1234567890987654321), "")
            XCTAssertFalse(isPalindrome(9223372036854775807), "")
            XCTAssertTrue(isPalindrome(0), "")
            XCTAssertFalse(isPalindrome(23), "")
            XCTAssertFalse(isPalindrome(Int.max), "")
            XCTAssertFalse(isPalindrome(Int.min), "")
        }
    }
    
}
