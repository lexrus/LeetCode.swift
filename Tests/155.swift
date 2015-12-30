//
//  155.swift
//  LeetCode
//
//  Created by Lex on 12/30/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

push(x) -- Push element x onto stack.
pop() -- Removes the element on top of the stack.
top() -- Get the top element.
getMin() -- Retrieve the minimum element in the stack.
*/

import Foundation
import XCTest

// @see https://leetcode.com/discuss/63482/solution-using-linked-list-clean-self-explanatory-efficient

struct MinStack {

    private indirect enum StackNode {
        case Empty
        case Node(value: Int, minimum: Int, next: StackNode?)
    }

    private var head: StackNode = .Empty

    mutating func push(x: Int) {
        switch head {
        case .Empty:
            head = StackNode.Node(value: x, minimum: x, next: nil)
            break
        case .Node(_, let minimum, _):
            let m = min(x, minimum)
            let n = StackNode.Node(value: x, minimum: m, next: head)
            head = n
        }
    }

    mutating func pop() {
        if case StackNode.Node(_, _, let next) = head {
            if let next = next {
                head = next
            }
        }
    }

    func top() -> Int {
        if case StackNode.Node(let value, _, _) = head {
            return value
        }
        return -1
    }

    func getMin() -> Int {
        if case StackNode.Node(_, let minimum, _) = head {
            return minimum
        }
        return -1
    }

}

class MinStackTest: XCTestCase {

    func testMinStack() {

        var s = MinStack()

        XCTAssertEqual(s.top(), -1)

        s.push(1)
        s.push(2)
        s.push(5)
        s.push(9)

        XCTAssertEqual(s.top(), 9)

        s.pop()
        XCTAssertEqual(s.top(), 5)

        XCTAssertEqual(s.getMin(), 1)

    }

}
