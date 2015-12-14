//
//  ListNode.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation

class ListNode: CustomDebugStringConvertible {

    var value: Int = 0
    var next: ListNode? = nil

    init(_ value: Int = 0, _ next: ListNode? = nil) {
        self.value = value
        self.next = next
    }

    var debugDescription: String {
        var s = "\(value)"
        var p = self
        while p.next != nil {
            p = p.next!
            s = "\(s) \(p.value)"
        }
        return s
    }

}
