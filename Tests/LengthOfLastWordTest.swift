//
//  LengthOfLastWord.swift
//  LengthOfLastWord
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class LengthOfLastWordTest: XCTestCase {
    
    func testLengthOfLastWord() {
        self.measureBlock() {
            XCTAssertEqual("Hello world".lengthOfLastWord(), 5, "")
            XCTAssertEqual("Helloworld".lengthOfLastWord(), 10, "")
            XCTAssertEqual("a".lengthOfLastWord(), 1, "")
            XCTAssertEqual(" ".lengthOfLastWord(), 0, "")
            XCTAssertEqual("Hello world   ".lengthOfLastWord(), 5, "")
            XCTAssertEqual("abc defg hijkl".lengthOfLastWord(), 5, "")
        }
    }
    
}
