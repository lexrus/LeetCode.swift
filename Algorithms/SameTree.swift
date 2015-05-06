//
//  SameTree.swift
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


private extension TreeNode
{
    func isEqualTo(tree: TreeNode) -> Bool {
        if self.value != tree.value {
            return false
        }
        var isEqual = true
        if let l = self.leftNode, tl = tree.leftNode {
            if !l.isEqualTo(tl) {
                isEqual = false
            }
        }
        if let r = self.rightNode, rl = tree.rightNode {
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