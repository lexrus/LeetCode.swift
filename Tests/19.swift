//
//  RemoveNthNodeFromEndOfList.swift
//  RemoveNthNodeFromEndOfList
//
//  Created by Lex Tang on 4/17/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given a linked list, remove the nth node from the end of list and return its head.

For example,

Given linked list: 1->2->3->4->5, and n = 2.

After removing the second node from the end, the linked list becomes 1->2->3->5.
Note:
Given n will always be valid.
Try to do this in one pass.
*/

import Foundation
import XCTest


extension ListNode {

    func childNodeCount() -> Int {
        var c = 0
        var d = self
        while d.next != nil {
            d = d.next!
            c += 1
        }
        return c
    }

    /**
     I know this algorithm is stupid but it's done by myself.

     - parameter n: Nth from the end of list
     - returns: The new linked list
     */
    func removeNthFromEnd(_ n: Int) -> ListNode {
        let result = ListNode(0)
        var current = ListNode(0, self)
        var dummy = result

        if n == self.childNodeCount() {
            return next!
        }

        var i = 0
        while current.next != nil {
            if i == self.childNodeCount() - n + 1 {
                if let nextAfterNext = current.next!.next {
                    current = nextAfterNext
                }
            } else {
                current = current.next!
            }
            dummy.next = ListNode(current.value)
            dummy = dummy.next!
            i += 1
        }
        return result.next!
    }

}


class RemoveNthNodeFromEndOfListTest: XCTestCase {

    func testRemoveNthNodeFromEndOfList() {
        let list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let result = list.removeNthFromEnd(2)
        XCTAssertEqual(result.debugDescription, "1 2 3 5", "")
    }

    func testRemoveFirstNode() {
        let list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let result = list.removeNthFromEnd(5)
        XCTAssertEqual(result.debugDescription, "2 3 4 5", "")
        XCTAssert(result.childNodeCount() == 3, "\(result.childNodeCount)")
    }
    
}
