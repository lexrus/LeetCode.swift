//
//  RemoveElement.swift
//  RemoveElement
//
//  Created by Lex Tang on 4/22/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Cocoa
import XCTest

class RemoveElementTest: XCTestCase {
    
    func testRemoveElement() {
        self.measureBlock() {
            var a: Array<Int>
            
            a = [1, 2, 3, 4, 5, 6]
            XCTAssertEqual(removeElement(&a, 2), 5, "")
            
            a = [2, 2]
            XCTAssertEqual(removeElement(&a, 2), 0, "")
            
            a = []
            XCTAssertEqual(removeElement(&a, 3), 0, "")
        }
    }
    
}
