//
//  Character+LeetCode.swift
//  LeetCode
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation

func == (lhs: Character, rhs: String) -> Bool {
    return String(lhs) == rhs
}

extension Character {

    func isDigit() -> Bool {
        switch String(self) {
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            return true
        default:
            return false
        }
    }

    func isSpace() -> Bool {
        switch String(self) {
        case " ", "\t", "\n", "\r":
            return true
        default:
            return false
        }
    }

}
