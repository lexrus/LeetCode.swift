//
//  ReverseInteger.swift
//  LeetCode
//
//  Created by Lex Tang on 4/17/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Reverse digits of an integer.

Example1: x = 123, return 321
Example2: x = -123, return -321

*******

Have you thought about this?

Here are some good questions to ask before coding. Bonus points for you if you have already thought through this!

If the integer's last digit is 0, what should the output be? ie, cases such as 10, 100.

Did you notice that the reversed integer might overflow? Assume the input is a 32-bit integer, then the reverse of 1000000003 overflows. How should you handle such cases?

For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
*/

import Foundation

extension Int {
    
    /**
    This Swift method is imitated from the C++ solution:
    https://github.com/haoel/leetcode/blob/master/algorithms/reverseInteger/reverseInteger.cpp
    
    :returns: The reversed Int
    */
    func reverse() -> Int {
        var y = 0, n = 0
        var x = self
        while x != 0 {
            n = x % 10
            // Check over/underflow
            if y > (Int(INT32_MAX) - n)/10 {
                return 0
            }
            y = y * 10 + n
            x /= 10
        }
        return y
    }
    
}
