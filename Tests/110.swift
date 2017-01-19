//
//  110.swift
//  LeetCode
//
//  Created by Lex on 12/29/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
*/

import Foundation
import XCTest

extension TreeNode {

    fileprivate func getHeight(_ node: TreeNode?) -> Int {
        guard let node = node else {
            return 0
        }
        if node.leftNode == nil && node.rightNode == nil {
            return 0
        }
        let leftHeight = getHeight(node.leftNode)
        let rightHeight = getHeight(node.rightNode)
        let distance = leftHeight > rightHeight
            ? leftHeight - rightHeight
            : rightHeight - leftHeight

        if distance > 1 {
            return -1
        }

        return distance + 1
    }

    func isBalancedBinaryTree() -> Bool {
        return getHeight(self) != -1
    }

}

class BalancedBinaryTreeTest: XCTestCase {

    func testBalancedBinaryTree() {

        var tree = TreeNode(0, TreeNode(1), TreeNode(0, TreeNode(2)))
        XCTAssert(tree.isBalancedBinaryTree())

        tree = TreeNode()
        XCTAssert(tree.isBalancedBinaryTree())

        tree = TreeNode(0, TreeNode(1), TreeNode(0, TreeNode(2, TreeNode(3))))
        XCTAssert(!tree.isBalancedBinaryTree())

        tree = TreeNode(2, TreeNode(2), nil)
        XCTAssert(tree.isBalancedBinaryTree())

        tree = TreeNode(2, TreeNode(2), TreeNode(2))
        XCTAssert(tree.isBalancedBinaryTree())
    }

}
