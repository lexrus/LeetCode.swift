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
            return .none
        }
        let index: Index = self.characters.index(self.startIndex, offsetBy: i)
        return self[index]
    }

    mutating func popBack() -> String {
        self.remove(at: self.characters.index(self.startIndex, offsetBy: self.characters.count - 1))
        return self
    }

}
