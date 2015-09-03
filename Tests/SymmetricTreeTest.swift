//
//  SymmetricTreeTest.swift
//  LeetCode
//
//  Created by Lex Tang on 6/16/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class SymmetricTreeTest: XCTestCase {
    func testSymmetricTree() {
        self.measureBlock() {
            XCTAssertTrue(isSymmetric(nil), "")
            
            let t0 = TreeNode(1,
                TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3)))
            
            XCTAssertTrue(isSymmetric(t0), "")
            
            let t1 = TreeNode(1,
                TreeNode(2, nil, TreeNode(3)), TreeNode(2, nil, TreeNode(3)))
            
            XCTAssertFalse(isSymmetric(t1), "")
            
        }
    }

}
