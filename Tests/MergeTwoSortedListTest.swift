//
//  MergeTwoSortedListTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Cocoa
import XCTest

class MergeTwoSortedListTest: XCTestCase {

    func testMergeTwoSortedList() {
        self.measureBlock() {
            let l0 = ListNode(1, ListNode(2, ListNode(3))).mergeSortedList(ListNode(2, ListNode(4)))!
            XCTAssertEqual(l0.debugDescription, "1 2 2 3 4", "")
            
            let l1 = ListNode(3).mergeSortedList(ListNode(2, ListNode(4)))!
            XCTAssertEqual(l1.debugDescription, "2 3 4", "")
            
            let l2 = ListNode(1).mergeSortedList(ListNode(0))!
            XCTAssertEqual(l2.debugDescription, "0 1", "")
        }
    }

}
