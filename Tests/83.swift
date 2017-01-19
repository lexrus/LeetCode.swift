//
//  83.swift
//  LeetCode
//
//  Created by Lex on 12/22/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Remove Duplicates from Sorted List

Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.

Subscribe to see which companies asked this question
*/

import Foundation
import XCTest

func deleteDuplicates(_ head: ListNode) -> ListNode {
    let dummy = ListNode(0, head)
    var current = dummy.next

    while current != nil {
        if current?.value == current?.next?.value {
            current!.next = current?.next?.next
        } else {
            current = current?.next
        }
    }

    return dummy.next!
}

class DeleteDuplicatesTest: XCTestCase {

    func testDeleteDuplicates() {
        var list = deleteDuplicates(ListNode(1, ListNode(1, ListNode(2))))
        XCTAssertEqual(list.debugDescription, "1 2")

        list = deleteDuplicates(ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3))))))
        XCTAssertEqual(list.debugDescription, "1 2 3")
    }

}
