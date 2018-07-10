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
        if i > count - 1 || i < 0 {
            return .none
        }
        let index: Index = self.index(startIndex, offsetBy: i)
        return self[index]
    }

    mutating func popBack() -> String {
        remove(at: index(startIndex, offsetBy: count - 1))
        return self
    }

}
