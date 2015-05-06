//
//  TreeNode.swift
//  LeetCode
//
//  Created by Lex Tang on 5/6/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation

class TreeNode: DebugPrintable {
    var value = 0
    var leftNode: TreeNode?
    var rightNode: TreeNode?
    
    init(_ value: Int = 0, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.value = value
        self.leftNode = left
        self.rightNode = right
    }
    
    private func printTree(tree: TreeNode) -> String {
        var s = "\(tree.value) {"
        if let l = tree.leftNode {
            s = "\(s)\(printTree(l))"
        }
        if let r = tree.rightNode {
            s = "\(s)|\(printTree(r))"
        }
        return "\(s)}"
    }
    
    var debugDescription: String {
        get {
            return printTree(self)
        }
    }
}