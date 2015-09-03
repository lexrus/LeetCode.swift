//
//  RemoveDuplicatesFromSortedArray.swift
//  RemoveDuplicatesFromSortedArray
//
//  Created by Lex Tang on 4/21/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class RemoveDuplicatesFromSortedArrayTest: XCTestCase {
    
    func testRemoveDuplicatesFromSortedArray() {
        self.measureBlock() {
            let array0 = NSMutableArray(array: [1,1,2])
            XCTAssertEqual(array0.removeDuplicates(), 2, "")
            
            let array1 = NSMutableArray(array: [3,4,4,5,5,5,6])
            XCTAssertEqual(array1.removeDuplicates(), 4, "")
            XCTAssertEqual(array1, [3,4,5,6], "")
            
            let array2 = NSMutableArray(array: [12, 12, 12, 12, 12])
            XCTAssertEqual(array2.removeDuplicates(), 1, "")
            XCTAssertEqual(array2, [12], "")
            
            let array3 = NSMutableArray(array: [])
            XCTAssertEqual(array3.removeDuplicates(), 0, "")
            XCTAssertEqual(array3, [], "")
            
            let array4 = NSMutableArray(array: ["a", "a", "b", "b", "b", "汉", "汉"])
            XCTAssertEqual(array4.removeDuplicates(), 3, "")
            XCTAssertEqual(array4, ["a", "b", "汉"], "")
        }
    }
    
}
