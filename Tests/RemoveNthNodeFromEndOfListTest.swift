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
            XCTAssertEqual(result.debugDescription, "1 2 3 5", "")
        }
    }
    
    func testRemoveFirstNode() {
        self.measureBlock() {
            let list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
            let result = list.removeNthFromEnd(5)
            XCTAssertEqual(result.debugDescription, "2 3 4 5", "")
            XCTAssert(result.childNodeCount() == 3, "\(result.childNodeCount)")
        }
    }
    
}
