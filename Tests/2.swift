//
//  AddTwoNumbers.swift
//  AddTwoNumbers
//
//  Created by Lex Tang on 4/16/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//
//
//  This Swift class is imitated from another Swift implementation:
//  https://github.com/diwu/LeetCode-Solutions-in-Swift/blob/master/Solutions/Solutions/Medium/Medium_002_Add_Two_Numbers.swift

/*
You are given two linked lists representing two non-negative numbers.
The digits are stored in reverse order and each of their nodes contain a single digit.
Add the two numbers and return it as a linked list.

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
*/

import Foundation
import XCTest


func +(list0: ListNode, list1: ListNode) -> ListNode {
    var x: ListNode? = list0
    var y: ListNode? = list1
    let dummy = ListNode()
    var current = dummy
    var sum = 0

    while x != nil || y != nil {
        // Sum
        sum /= 10
        if let _ = x {
            sum += x!.value
            x = x!.next
        }
        if let _ = y {
            sum += y!.value
            y = y!.next
        }

        // Move next
        current.next = ListNode(sum % 10)
        current = current.next!
    }

    // If the previous node is greater than 10
    if sum / 10 > 0 {
        current.next = ListNode(1)
    }

    return dummy.next!
}


class AddTwoNumbersTest: XCTestCase {

    func testAddTwoNumbers() {
        let l0 = ListNode(2, ListNode(4, ListNode(3))) + ListNode(5, ListNode(6, ListNode(4)))
        XCTAssertEqual(l0.debugDescription, "7 0 8", "")

        let l1 = ListNode(1, ListNode(3, ListNode(5))) + ListNode(9, ListNode(5, ListNode(5)))
        XCTAssertEqual(l1.debugDescription, "0 9 0 1", "")

        let l2 = ListNode(0) + ListNode(0)
        XCTAssertEqual(l2.debugDescription, "0", "")

        let l3 = ListNode(5) + ListNode(5)
        XCTAssertEqual(l3.debugDescription, "0 1", "")

        let l4 = ListNode(8) + ListNode(5, ListNode(2))
        XCTAssertEqual(l4.debugDescription, "3 3", "")

        let l5 = ListNode(9) + ListNode(9, ListNode(9))
        XCTAssertEqual(l5.debugDescription, "8 0 1")
    }
    
}
