//
//  AddTwoNumbers.swift
//  LeetCode
//
//  Created by Lex Tang on 4/16/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
You are given two linked lists representing two non-negative numbers.
The digits are stored in reverse order and each of their nodes contain a single digit.
Add the two numbers and return it as a linked list.

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
*/

import Foundation

class ListNode {
    var value: Int = 0
    var next: ListNode? = nil
    
    init(_ value: Int = 0, _ next: ListNode? = nil) {
        self.value = value
        self.next = next
    }
}

class AddTwoNumbers {
    class func addTwoNumber(list0: ListNode, _ list1: ListNode) -> ListNode {
        var x: ListNode? = list0
        var y: ListNode? = list1
        var dummy = ListNode()
        var current = dummy
        var sum = 0
        
        while x != nil || y != nil {
            // Sum
            sum /= 10
            sum += x!.value + y!.value
            current.next = ListNode(sum % 10)
            
            // Move next
            x = x!.next
            y = y!.next
            current = current.next!
        }
        
        // If the previous node is greater than 10
        if Bool(sum / 10) {
            current.next = ListNode(1)
        }
        
        return dummy.next!
    }
}
