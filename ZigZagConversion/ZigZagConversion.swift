//
//  ZigZagConversion.swift
//  LeetCode
//
//  Created by Lex Tang on 4/16/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

P   A   H   N
A P L S I I G
Y   I   R

And then read line by line: "PAHNAPLSIIGYIR"
Write the code that will take a string and make this conversion given a number of rows:

string convert(string text, int nRows);
convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".
*/

import Foundation

class ZigZagConversion {
    
    class func convert(text: String, _ rows: Int) -> String {
        if rows <= 1 || rows > count(text) {
            return text
        }
        
        // TODO: Move on.
        
        return ""
    }
    
}
