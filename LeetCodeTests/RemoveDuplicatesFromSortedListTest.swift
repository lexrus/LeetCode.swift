//
//  RemoveDuplicatesFromSortedListTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/6/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class RemoveDuplicatesFromSortedListTest: XCTestCase {

    func testRemoveDuplicatesFromSortedList() {
        self.measureBlock() {
            var l0 = ListNode(1, ListNode(1))
            XCTAssertEqual(l0.removeDuplicatesFromSortedList().debugDescription, "1", "")
            
            var l1 = ListNode(1, ListNode(1, ListNode(2)))
            XCTAssertEqual(l1.removeDuplicatesFromSortedList().debugDescription, "1 2", "")
            
            var l2 = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
            XCTAssertEqual(l2.removeDuplicatesFromSortedList().debugDescription, "1 2 3", "")
        }
    }

}
