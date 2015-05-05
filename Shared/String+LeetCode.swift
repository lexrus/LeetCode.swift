//
//  String+LeetCode.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation

extension String
{
    subscript (i: Int) -> Character? {
        if i > count(self) - 1 {
            return .None
        }
        var index: Index = advance(self.startIndex, i)
        return self[index]
    }
    
    mutating func popBack() -> String {
        self.removeAtIndex(advance(self.startIndex, count(self) - 1))
        return self
    }
}