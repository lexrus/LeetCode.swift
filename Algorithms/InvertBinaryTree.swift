//
//  InvertBinaryTree.swift
//  LeetCode
//
//  Created by Lex Tang on 6/12/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Invert a binary tree.

     4
   /   \
  2     7
 / \   / \
1   3 6   9

    to

     4
   /   \
  7     2
 / \   / \
9   6 3   1

Trivia:

This problem was inspired by this original tweet by Max Howell:
Google: 90% of our engineers use the software you wrote (Homebrew), but you can’t invert a binary tree on a whiteboard so fuck off.
*/

import Foundation

func invertBinaryTree(tree: TreeNode) -> TreeNode {
    let l = tree.leftNode
    let r = tree.rightNode
    tree.leftNode = r
    tree.rightNode = l
    if tree.leftNode != nil {
        tree.leftNode = invertBinaryTree(r!)
    }
    if tree.rightNode != nil {
        tree.rightNode = invertBinaryTree(l!)
    }
    return tree
}