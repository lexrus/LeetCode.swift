//
//  MergeTwoSortedListTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Merge two sorted linked lists and return it as a new list.
The new list should be made by splicing together the nodes of the first two lists.
*/

import Foundation
import XCTest


extension ListNode {

    func mergeSortedLists(_ list: ListNode) -> ListNode? {
        let dummy = ListNode(0)
        var p = dummy
        var l1: ListNode? = self
        var l2: ListNode? = list

        while l1 != nil && l2 != nil {
            if l1!.value < l2!.value {
                p.next = l1
                p = l1!
                l1 = l1!.next
            } else {
                p.next = l2
                p = l2!
                l2 = l2!.next
            }
        }

        if l1 != nil {
            p.next = l1!
        } else if l2 != nil {
            p.next = l2!
        }

        return dummy.next
    }

}


class MergeTwoSortedListsTest: XCTestCase {

    func testMergeTwoSortedList() {
        let l0 = ListNode(1, ListNode(2, ListNode(3))).mergeSortedLists(ListNode(2, ListNode(4)))!
        XCTAssertEqual(l0.debugDescription, "1 2 2 3 4", "")

        let l1 = ListNode(3).mergeSortedLists(ListNode(2, ListNode(4)))!
        XCTAssertEqual(l1.debugDescription, "2 3 4", "")

        let l2 = ListNode(1).mergeSortedLists(ListNode(0))!
        XCTAssertEqual(l2.debugDescription, "0 1", "")
    }
    
}
