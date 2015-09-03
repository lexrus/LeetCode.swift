//
//  MaximumDepthOfBinaryTreeTest.swift
//  LeetCode
//
//  Created by Lex on 9/1/15.
//  Copyright © 2015 Lex Tang. All rights reserved.
//

import XCTest

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
