//
//  MergeSortedArray.swift
//  LeetCode
//
//  Created by Lex Tang on 4/22/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given two sorted integer arrays A and B, merge B into A as one sorted array.

Note:
You may assume that A has enough space (size that is greater or equal to m + n) to hold additional elements from B.
The number of elements initialized in A and B are m and n respectively.
*/

import Foundation


func mergeSortedArray(a: Array<Int>, b: Array<Int>) -> Array<Int> {
    let m = a.count
    let n = b.count
    var c = Array(count: m + n, repeatedValue: 0)
    
    var i = m + n - 1
    var j = m - 1
    var k = n - 1
    
    while i >= 0 {
        if j < 0 {
            c[i] = b[k]
            k--
        } else if k < 0 {
            c[i] = a[j]
            j--
        } else {
            if a[j] > b[k] {
                c[i] = a[j]
                j--
            } else {
                c[i] = b[k]
                k--
            }
        }
        i--
    }
    
    return c
}