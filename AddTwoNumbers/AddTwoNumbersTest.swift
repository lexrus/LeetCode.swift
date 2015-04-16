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
            let list0 = ListNode(2, ListNode(4, ListNode(3)))
            let list1 = ListNode(5, ListNode(6, ListNode(4)))
            let list2 = AddTwoNumbers.addTwoNumber(list0, list1)
            XCTAssert(list2.value == 7 && list2.next!.value == 0 && list2.next!.next!.value == 8, "")
            
            let list3 = ListNode(1, ListNode(3, ListNode(5)))
            let list4 = ListNode(9, ListNode(5, ListNode(5)))
            let list5 = AddTwoNumbers.addTwoNumber(list3, list4)
            XCTAssert(list5.value == 0 && list5.next!.value == 9 && list5.next!.next!.value == 0, "")
        }
    }
    
}
