//
//  SymmetricTreeTest.swift
//  LeetCode
//
//  Created by Lex Tang on 6/16/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree is symmetric:

1
/ \
2   2
/ \ / \
3  4 4  3

But the following is not:

1
/ \
2   2
\   \
3    3

Note:
Bonus points if you could solve it both recursively and iteratively.
*/

import Foundation
import XCTest

func isNodesSymmetric(_ left: TreeNode?, right: TreeNode?) -> Bool {
    if left == nil && right == nil {
        return true
    }

    if left == nil || right == nil {
        return false
    }

    if left!.value != right!.value {
        return false
    }

    return isNodesSymmetric(left!.leftNode, right: right!.rightNode)
        && isNodesSymmetric(right!.leftNode, right: left!.rightNode)
}

func isSymmetric(_ root: TreeNode?) -> Bool {

    if root == nil {
        return true
    }

    return isNodesSymmetric(root!.leftNode, right: root!.rightNode)
}


class SymmetricTreeTest: XCTestCase {

    func testSymmetricTree() {
        XCTAssertTrue(isSymmetric(nil), "")

        let t0 = TreeNode(1,
            TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3)))

        XCTAssertTrue(isSymmetric(t0), "")

        let t1 = TreeNode(1,
            TreeNode(2, nil, TreeNode(3)), TreeNode(2, nil, TreeNode(3)))

        XCTAssertFalse(isSymmetric(t1), "")
    }
    
}
