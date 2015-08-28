//
//  TwoSum.swift
//  LeetCode
//
//  Created by Lex Tang on 4/15/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//
//  This Swift class is imitated from the C++ repo:
//  https://github.com/haoel/leetcode

// Source : https://oj.leetcode.com/problems/two-sum/
// Author : Hao Chen
// Date   : 2014-06-17

/**********************************************************************************
*
* Given an array of integers, find two numbers such that they add up to a specific target number.
*
* The function twoSum should return indices of the two numbers such that they add up to the target,
* where index1 must be less than index2. Please note that your returned answers (both index1 and index2)
* are not zero-based.
*
* You may assume that each input would have exactly one solution.
*
* Input: numbers={2, 7, 11, 15}, target=9
* Output: index1=1, index2=2
*
*
**********************************************************************************/

import Foundation


class TwoSum {
    /**
    The easy solution is O(n^2) run-time complexity.
    We can see the nested loop just for searching,
    So, we can use a hashmap to reduce the searching time complexity from O(n) to
    O(1)
    (the map's `key` is the number, the `value` is the position)
    But be careful, if there are duplication numbers in array,
    how the map store the positions for all of same numbers?
    
    - parameter array:  Input numbers
    - parameter target: Target number
    
    - returns: Indeces of the two numbers
    */
    class func twoSum0(array: [Int], target: Int) -> (Int, Int)? {
        for (i, item0) in array.enumerate() {
            for (j, item1) in array.enumerate() {
                if item0 + item1 == target {
                    return (i + 1, j + 1)
                }
            }
        }
        return .None
    }
    
    /**
    The implementation as below is bit tricky. but not difficult to understand
    1) Traverse the array one by one
    2) just put the `target - num[i]`(not `num[i]`) into the map
    so, when we checking the next num[i], if we found it is exisited in the map.
    which means we found the second one.
    
    - parameter array:  Input numbers
    - parameter target: Target number
    
    - returns: Indeces of the two numbers
    */
    class func twoSum1(array: [Int], target: Int) -> (Int, Int)? {
        var map = [Int: Int]()
        for (i, item0) in array.enumerate() {
            // found the second one
            if let secondOne = map[item0] {
                return (secondOne + 1, i + 1)
            } else {
                // store the first one poisition into the second one's key
                map[target - item0] = i
            }
        }
        return .None
    }
}
