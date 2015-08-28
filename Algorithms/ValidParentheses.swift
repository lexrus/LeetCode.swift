//
//  ValidParentheses.swift
//  LeetCode
//
//  Created by Lex Tang on 4/17/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
*/

import Foundation


extension String {
    
    /**
    This Swift method is imitated from another C++ solution:
    https://github.com/haoel/leetcode/blob/master/algorithms/validParentheses/validParentheses.cpp
    
    - returns: Whether the string is valid.
    */
    func validParentheses() -> Bool {
        var stack = [Character]()
        var s = self
        
        while s.characters.count > 0 {
            let char = s[s.characters.count - 1]
            
            if char == "("[0] || char == "["[0] || char == "{"[0] {
                let sChar = stack.last ?? " "[0]
                
                if (char == "("[0] && sChar == ")"[0])
                    || (char == "["[0] && sChar == "]"[0])
                    || (char == "{"[0] && sChar == "}"[0]) {
                        s.popBack()
                        stack.removeAtIndex(stack.count - 1)
                } else {
                    return false
                }
            } else if char == ")"[0] || char == "]"[0] || char == "}"[0] {
                s.popBack()
                stack.append(char!)
            } else {
                s.popBack()
            }
        }
        
        return s.characters.count == 0 && stack.count == 0
    }

}