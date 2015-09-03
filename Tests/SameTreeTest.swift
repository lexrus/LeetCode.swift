//
//  SameTreeTest.swift
//  LeetCode
//
//  Created by Lex Tang on 5/6/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class SameTreeTest: XCTestCase {

    func testSameTree() {
        self.measureBlock() {
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

}
