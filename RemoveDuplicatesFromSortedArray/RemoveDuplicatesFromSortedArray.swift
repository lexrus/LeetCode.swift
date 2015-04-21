//
//  RemoveDuplicatesFromSortedArray.swift
//  LeetCode
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

extension NSMutableArray {
    
    // O(n)
    func removeDuplicates() -> Int {
        // In case there is nothing to do
        if self.count == 0 {
            return 0
        }
        
        var index = 0
        for var i = 1; i < self.count; i++ {
            let l: AnyObject = self.objectAtIndex(index)
            let r: AnyObject = self.objectAtIndex(i)
            if !l.isEqual(r) {
                self.replaceObjectAtIndex(++index, withObject: r)
            }
        }
        
        // Remove the remaining
        self.removeObjectsInRange(NSRange(location: index + 1, length: self.count - index - 1))
        return index + 1
    }
}