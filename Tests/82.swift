//
//  RemoveDuplicatesFromSortedListTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/6/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.
*/

import Foundation
import XCTest


extension ListNode {

    func removeDuplicatesFromSortedListII() -> ListNode {
        let dummy = ListNode(0, self)
        var l0 = dummy.next

        while l0 != nil {
            if let l1 = l0!.next {
                if l0!.value == l1.value {
                    if let l2 = l1.next {
                        l0!.next = l2
                    } else {
                        l0!.next = nil
                    }
                }
            }
            l0 = l0!.next
        }

        return dummy.next!
    }

}


class RemoveDuplicatesFromSortedListIITest: XCTestCase {

    func testRemoveDuplicatesFromSortedList() {
        let l0 = ListNode(1, ListNode(1))
        XCTAssertEqual(l0.removeDuplicatesFromSortedListII().debugDescription, "1", "")

        let l1 = ListNode(1, ListNode(1, ListNode(2)))
        XCTAssertEqual(l1.removeDuplicatesFromSortedListII().debugDescription, "1 2", "")

        let l2 = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
        XCTAssertEqual(l2.removeDuplicatesFromSortedListII().debugDescription, "1 2 3", "")
    }
    
}
