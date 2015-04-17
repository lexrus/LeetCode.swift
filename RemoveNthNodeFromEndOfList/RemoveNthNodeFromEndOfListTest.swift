//
//  RemoveNthNodeFromEndOfList.swift
//  RemoveNthNodeFromEndOfList
//
//  Created by Lex Tang on 4/17/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class RemoveNthNodeFromEndOfListTest: XCTestCase {
    
    func testRemoveNthNodeFromEndOfList() {
        self.measureBlock() {
            let list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
            let result = list.removeNthFromEnd(2)
            XCTAssert(
                result.value == 1 &&
                result.next!.value == 2 &&
                result.next!.next!.value == 3 &&
                result.next!.next!.next!.value == 5, "")
        }
    }
    
    func testRemoveFirstNode() {
        self.measureBlock() {
            let list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
            let result = list.removeNthFromEnd(5)
            XCTAssert(result.childNodeCount == 3, "\(result.childNodeCount)")
            XCTAssert(result.value == 2, "")
        }
    }
    
}
