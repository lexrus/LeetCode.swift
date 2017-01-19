//
//  RemoveDuplicatesFromSortedArray.swift
//  RemoveDuplicatesFromSortedArray
//
//  Created by Lex Tang on 4/21/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

Do not allocate extra space for another array, you must do this in place with constant memory.

For example,
Given input array A = [1,1,2],

Your function should return length = 2, and A is now [1,2].
*/

import Foundation
import XCTest


extension NSMutableArray {

    // O(n)
    func removeDuplicates() -> Int {
        // In case there is nothing to do
        if self.count == 0 {
            return 0
        }

        var index = 0
        for i in 1 ..< self.count {
            let l: AnyObject = self.object(at: index) as AnyObject
            let r: AnyObject = self.object(at: i) as AnyObject
            if !l.isEqual(r) {
                index += 1
                self.replaceObject(at: index, with: r)
            }
        }

        // Remove the remaining
        self.removeObjects(in: NSRange(location: index + 1, length: self.count - index - 1))
        return index + 1
    }

}


class RemoveDuplicatesFromSortedArrayTest: XCTestCase {

    func testRemoveDuplicatesFromSortedArray() {
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
