//
//  SameTreeTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/6/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given two binary trees, write a function to check if they are equal or not.

Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
*/

import Foundation
import XCTest


private extension TreeNode {

    func isEqualTo(_ tree: TreeNode) -> Bool {
        if self.value != tree.value {
            return false
        }
        var isEqual = true
        if let l = self.leftNode, let tl = tree.leftNode {
            if !l.isEqualTo(tl) {
                isEqual = false
            }
        }
        if let r = self.rightNode, let rl = tree.rightNode {
            if !r.isEqualTo(rl) {
                isEqual = false
            }
        }

        return isEqual
    }

}

func ==(lhs: TreeNode, rhs: TreeNode) -> Bool {
    return lhs.isEqualTo(rhs)
}


class SameTreeTest: XCTestCase {

    func testSameTree() {
        XCTAssertTrue(TreeNode(0) == TreeNode(0), "")
        let t0 = TreeNode(0, nil, TreeNode(2))
        let t1 = TreeNode(0, nil, TreeNode(2))
        XCTAssertTrue(t0 == t1, "")

        let t2 = TreeNode(45,
            TreeNode(2,
                TreeNode(53,
                    TreeNode(1), TreeNode(2))))
        let t3 = TreeNode(45,
            TreeNode(2,
                TreeNode(53,
                    TreeNode(1), TreeNode(2))))
        XCTAssertTrue(t2 == t3, "")

        let t4 = TreeNode(23,
            TreeNode(4,
                TreeNode(0), TreeNode(1)),
            TreeNode(2))
        let t5 = TreeNode(23,
            TreeNode(4,
                TreeNode(0), TreeNode(2)),
            TreeNode(2))

        XCTAssertFalse(t4 == t5, "")
    }

}
