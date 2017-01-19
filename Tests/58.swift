//
//  LengthOfLastWord.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
If the last word does not exist, return 0.
Note: A word is defined as a character sequence consists of non-space characters only.
For example,
Given s = "Hello World",
return 5.
*/

import Foundation
import XCTest


extension String {

    func lengthOfLastWord() -> Int {
        var wordLength = 0
        var cnt = 0
        let spaceChar: Character = " "

        for (_, c) in "\(self) ".characters.enumerated() {
            if c != spaceChar {
                cnt += 1
            } else {
                if cnt > 0 {
                    wordLength = cnt
                }
                cnt = 0
            }
        }

        return wordLength
    }

}


class LengthOfLastWordTest: XCTestCase {

    func testLengthOfLastWord() {
        XCTAssertEqual("Hello world".lengthOfLastWord(), 5, "")
        XCTAssertEqual("Helloworld".lengthOfLastWord(), 10, "")
        XCTAssertEqual("a".lengthOfLastWord(), 1, "")
        XCTAssertEqual(" ".lengthOfLastWord(), 0, "")
        XCTAssertEqual("Hello world   ".lengthOfLastWord(), 5, "")
        XCTAssertEqual("abc defg hijkl".lengthOfLastWord(), 5, "")
    }
    
}
