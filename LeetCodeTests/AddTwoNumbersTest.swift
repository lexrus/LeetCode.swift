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
            
            let result2 = ListNode(0) + ListNode(0)
            XCTAssert(result2.value == 0, "")
            
            let result3 = ListNode(5) + ListNode(5)
            XCTAssert(result3.value == 0 && result3.next!.value == 1, "")
            
            let result4 = ListNode(8) + ListNode(5, ListNode(2))
            XCTAssert(result4.value == 3 && result4.next!.value == 3, "")
            
            let result5 = ListNode(9) + ListNode(9, ListNode(9))
            XCTAssert(result5.value == 8 && result5.next!.value == 0 && result5.next!.next!.value == 1, "")
        }
    }
    
}
