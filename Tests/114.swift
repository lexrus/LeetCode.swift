//
//  114.swift
//  LeetCode
//
//  Created by Lex on 1/7/16.
//  Copyright © 2016 Lex Tang. All rights reserved.
//

/*
Given a binary tree, flatten it to a linked list in-place.

For example,
Given

    1
   / \
  2   5
 / \   \
3   4   6
The flattened tree should look like:
1
 \
  2
   \
    3
     \
      4
       \
        5
         \
          6

Hints:
If you notice carefully in the flattened tree,
each node's right child points to the next node of a pre-order traversal.
*/

import Foundation
import XCTest

extension TreeNode {

    func flatten() {
        leftNode?.flatten()
        rightNode?.flatten()
        if leftNode == nil {
            return
        }

        let right = rightNode
        rightNode = leftNode
        leftNode = nil

        var root: TreeNode? = self
        while root?.rightNode != nil {
            root = root?.rightNode
        }
        root?.rightNode = right
    }

}

class TreeNodeFlattenTest: XCTestCase {

    func testFlatten() {
        let t0 = TreeNode()
        t0.flatten()
        XCTAssertEqual(TreeNode().debugDescription, t0.debugDescription)

        let t1 = TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(5, nil, TreeNode(6)))
        t1.flatten()
        let target1 = TreeNode(1, nil, TreeNode(2, nil, TreeNode(3, nil, TreeNode(4, nil, TreeNode(5, nil, TreeNode(6))))))
        XCTAssertEqual(t1.debugDescription, target1.debugDescription)
    }

}