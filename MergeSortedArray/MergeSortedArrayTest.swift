//
//  MergeSortedArray.swift
//  MergeSortedArray
//
//  Created by Lex Tang on 4/22/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class MergeSortedArrayTest: XCTestCase {
    
    func testMergeSortedArray() {
        self.measureBlock() {
            var a: Array<Int>, b: Array<Int>, c: Array<Int>
            
            a = [1, 3, 5, 7, 9]
            b = [2, 4, 6, 8, 10]
            c = mergeSortedArray(a, b)
            XCTAssertEqual(c, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "")
            
            a = []
            b = []
            c = mergeSortedArray(a, b)
            XCTAssertEqual(c, [], "")
            
            a = [3]
            b = [2]
            c = mergeSortedArray(a, b)
            XCTAssertEqual(c, [2, 3], "")
            
            a = [2]
            b = [1, 5, 12]
            c = mergeSortedArray(a, b)
            XCTAssertEqual(c, [1, 2, 5, 12], "")
            
        }
    }
    
}
