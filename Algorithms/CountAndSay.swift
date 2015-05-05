//
//  CountAndSay.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
The count-and-say sequence is the sequence of integers beginning as follows:
1, 11, 21, 1211, 111221, ...

1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.
Given an integer n, generate the nth sequence.

Note: The sequence of integers will be represented as a string.
*/

import Foundation


func countAndSay(n: Int) -> String {
    if n == 0 {
        return ""
    }
    
    if n == 1 {
        return "1"
    }
    
    var s = "1"
    var i = 1
    
    while i < n {
        var cnt = 0
        var last = s[0]
        var newS = ""
        for var j = 0; j <= count(s); j++ {
            if s[j] == last {
                cnt++
            } else {
                newS.append(Character("\(cnt)"))
                newS.append(last!)
                last = s[j]
                cnt = 1
            }
        }
        s = newS
        i++
    }
    
    return s
}