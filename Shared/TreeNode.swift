//
//  TreeNode.swift
//  LeetCode
//
//  Created by Lex Tang on 5/6/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation

class TreeNode: CustomDebugStringConvertible {
    var value = 0
    var leftNode: TreeNode?
    var rightNode: TreeNode?

    init(_ value: Int = 0, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.value = value
        self.leftNode = left
        self.rightNode = right
    }

    fileprivate func printTree(_ tree: TreeNode) -> String {
        var s = ""
        if let l = tree.leftNode {
            s = "l=\(printTree(l))"
        }
        if let r = tree.rightNode {
            s = "\(s), r=\(printTree(r))"
        }

        if s.isEmpty {
            return "\(tree.value):-"
        } else {
            return "\(tree.value):( \(s) )"
        }
    }

    var debugDescription: String {
        return printTree(self)
    }

}
