//
//  ValidParentheses.swift
//  ValidParentheses
//
//  Created by Lex Tang on 4/17/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Cocoa
import XCTest

class ValidParenthesesTest: XCTestCase {
    
    func testValidParenthese() {
        self.measureBlock() {
            XCTAssert("()[]{}".validParentheses(), "'()[]{}' is valid.")
            XCTAssert("{{}{[]()}}".validParentheses(), "'{{}{[]()}}' is valid.")
            XCTAssertFalse("([".validParentheses(), "'([' is invalid.")
            XCTAssertFalse("([)]".validParentheses(), "'([)]' is invalid.")
        }
    }
    
}
