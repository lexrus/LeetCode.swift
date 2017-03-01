//
//  520.swift
//  LeetCode
//
//  Created by Lex on 3/1/17.
//  Copyright © 2017 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

/*
 Given a word, you need to judge whether the usage of capitals in it is right or not.
 
 We define the usage of capitals in a word to be right when one of the following cases holds:
 
 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital if it has more than one letter, like "Google".
 Otherwise, we define that this word doesn't use capitals in a right way.
 
 Example 1:
 Input: "USA"
 Output: True
 
 Example 2:
 Input: "FlaG"
 Output: False
 
 Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.
*/

private extension String {
    func isAllUppercase() -> Bool {
        let uppercaseSet = CharacterSet.uppercaseLetters
        return unicodeScalars.reduce(true) {
            $0 && uppercaseSet.contains($1)
        }
    }
    
    func isAllLowercase() -> Bool {
        let lowercaseSet = CharacterSet.lowercaseLetters
        return unicodeScalars.reduce(true) {
            $0 && lowercaseSet.contains($1)
        }
    }
    
    func isTitle() -> Bool {
        if let range = rangeOfCharacter(from: .uppercaseLetters, options: .backwards, range: nil) {
            return range.lowerBound == self.startIndex && range.upperBound == index(startIndex, offsetBy: 1)
        }
        
        return false
    }
}

func detectCapital(s: String) -> Bool {
    return s.isAllUppercase() || s.isAllLowercase() || s.isTitle()
}

class TestDetectCapital : XCTestCase {
    
    func testDetectCapital() {
        XCTAssertTrue(detectCapital(s: "Hello"))
        XCTAssertTrue(detectCapital(s: "world"))
        XCTAssertTrue(detectCapital(s: "SH"))
        XCTAssertTrue(detectCapital(s: "S"))
        XCTAssertFalse(detectCapital(s: "FlaG"))
        XCTAssertFalse(detectCapital(s: "flaG"))
    }
    
}
