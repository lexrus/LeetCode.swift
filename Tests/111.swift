//
//  111.swift
//  LeetCode
//
//  Created by Lex on 12/26/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
*/

import Foundation
import XCTest

extension TreeNode {
    
    fileprivate func minimumDepth(_ node: TreeNode?) -> Int {
        if node == nil {
            return 0
        }
        if let left = node?.leftNode, let right = node?.rightNode {
            return min(minimumDepth(left), minimumDepth(right)) + 1
        }
        return max(minimumDepth(node?.leftNode), minimumDepth(node?.rightNode)) + 1
    }
    
    var minimumDepth: Int {
        return minimumDepth(self)
    }
    
}

class MinimumDepthTest: XCTestCase {
    
    func testMinimumDepth() {
        XCTAssert(TreeNode(0).minimumDepth == 1)
        XCTAssert(TreeNode(0, TreeNode(1, TreeNode(2))).minimumDepth == 3)
        XCTAssert(TreeNode(0, TreeNode(1, TreeNode(2)), TreeNode(0)).minimumDepth == 2)
    }
    
}
