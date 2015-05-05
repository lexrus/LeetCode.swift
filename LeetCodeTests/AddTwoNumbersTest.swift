//
//  AddTwoNumbers.swift
//  AddTwoNumbers
//
//  Created by Lex Tang on 4/16/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class AddTwoNumbersTest: XCTestCase {
    
    func testAddTwoNumbers() {
        self.measureBlock() {
            let l0 = ListNode(2, ListNode(4, ListNode(3))) + ListNode(5, ListNode(6, ListNode(4)))
            XCTAssertEqual(l0.debugDescription, "7 0 8", "")
            
            let l1 = ListNode(1, ListNode(3, ListNode(5))) + ListNode(9, ListNode(5, ListNode(5)))
            XCTAssertEqual(l1.debugDescription, "0 9 0 1", "")
            
            let l2 = ListNode(0) + ListNode(0)
            XCTAssertEqual(l2.debugDescription, "0", "")
            
            let l3 = ListNode(5) + ListNode(5)
            XCTAssertEqual(l3.debugDescription, "0 1", "")
            
            let l4 = ListNode(8) + ListNode(5, ListNode(2))
            XCTAssertEqual(l4.debugDescription, "3 3", "")
            
            let l5 = ListNode(9) + ListNode(9, ListNode(9))
            XCTAssertEqual(l5.debugDescription, "8 0 1")
        }
    }
    
}
