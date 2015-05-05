//
//  RemoveElement.swift
//  LeetCode
//
//  Created by Lex Tang on 4/22/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given an array and a value, remove all instances of that value in place and return the new length.

The order of elements can be changed. It doesn't matter what you leave beyond the new length.
*/

import Foundation


func removeElement(inout array: Array<Int>, element: Int) -> Int {
    var i = 0, j = 0
    
    for ; i < array.count; i++ {
        if array[i] == element {
            continue
        }
        
        array[j] = array[i]
        j++
    }
    
    // NOTE: In order to remove the remaining elements.
    if array.count >= j+1 {
        array.removeRange(j..<array.count)
    }
    
    return j
}