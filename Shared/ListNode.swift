//
//  ListNode.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation

class ListNode {
    var value: Int = 0
    var next: ListNode? = nil
    
    init(_ value: Int = 0, _ next: ListNode? = nil) {
        self.value = value
        self.next = next
    }
}