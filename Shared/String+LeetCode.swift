//
//  String+LeetCode.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation

extension String {

    subscript (i: Int) -> Character? {
        if i > self.characters.count - 1 {
            return .None
        }
        let index: Index = self.startIndex.advancedBy(i)
        return self[index]
    }

    mutating func popBack() -> String {
        self.removeAtIndex(self.startIndex.advancedBy(self.characters.count - 1))
        return self
    }

}
