//
//  MaximumDepthOfBinaryTreeTest.swift
//  LeetCode
//
//  Created by Lex on 9/1/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
*/

import Foundation
import XCTest

extension TreeNode {

    fileprivate func _maxDepth(_ node: TreeNode?, _ depth: Int) -> Int {
        if let node = node {
            return 1 + max(_maxDepth(node.leftNode, depth), _maxDepth(node.rightNode, depth))
        }
        return 0
    }

    var maxDepth: Int {
        return _maxDepth(self, 0)
    }
}


class MaximumDepthOfBinaryTreeTest: XCTestCase {

    func testExample() {
        let t0 = TreeNode(0, TreeNode(1), TreeNode(2, TreeNode(3), TreeNode(4)))
        XCTAssert(t0.maxDepth == 3, "")

        let t1 = TreeNode(0)
        XCTAssert(t1.maxDepth == 1, "")

        let t2 = TreeNode(0, TreeNode(1, TreeNode(2, TreeNode(3, TreeNode(4, TreeNode(5))))))
        XCTAssert(t2.maxDepth == 6, "")
    }

}
