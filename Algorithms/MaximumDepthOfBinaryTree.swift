//
//  MaximumDepthOfBinaryTree.swift
//  LeetCode
//
//  Created by Lex on 9/1/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

/*
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
*/

extension TreeNode {
    
    private func _maxDepth(node: TreeNode?, _ depth: Int) -> Int {
        if let node = node {
            return 1 + max(_maxDepth(node.leftNode, depth), _maxDepth(node.rightNode, depth))
        }
        return 0
    }
    
    var maxDepth: Int {
        return _maxDepth(self, 0)
    }
}