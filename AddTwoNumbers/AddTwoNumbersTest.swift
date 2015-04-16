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
            let result0 = ListNode(2, ListNode(4, ListNode(3))) + ListNode(5, ListNode(6, ListNode(4)))
            XCTAssert(result0.value == 7 && result0.next!.value == 0 && result0.next!.next!.value == 8, "")
            
            let result1 = ListNode(1, ListNode(3, ListNode(5))) + ListNode(9, ListNode(5, ListNode(5)))
            XCTAssert(result1.value == 0 && result1.next!.value == 9 && result1.next!.next!.value == 0, "")
        }
    }
    
}
