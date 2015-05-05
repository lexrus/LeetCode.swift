//
//  PalindromeNumber.swift
//  LeetCode
//
//  Created by Lex Tang on 5/4/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Determine whether an integer is a palindrome. Do this without extra space.

Some hints:
Could negative integers be palindromes? (ie, -1)

If you are thinking of converting the integer to string, note the restriction of using extra space.

You could also try reversing an integer. However, if you have solved the problem "Reverse Integer", you know that the reversed integer might overflow. How would you handle such case?

There is a more generic way of solving this problem.

@see also: https://leetcode.com/discuss/12693/neat-ac-java-code-o-n-time-complexity

*/

import Foundation


func isPalindrome(x : Int) -> Bool {
    var parlinedromeX = 0
    var tmpX = x
    while tmpX > 0 {
        if parlinedromeX >= Int.max / 10 {
            return false
        }
        
        parlinedromeX = parlinedromeX * 10 + tmpX % 10
        tmpX = tmpX / 10
    }
    
    return parlinedromeX == x
}