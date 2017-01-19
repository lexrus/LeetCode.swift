//
//  RemoveElement.swift
//  RemoveElement
//
//  Created by Lex Tang on 4/22/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Given an array and a value, remove all instances of that value in place and return the new length.

The order of elements can be changed. It doesn't matter what you leave beyond the new length.
*/

import Foundation
import XCTest


func removeElement(_ array: inout Array<Int>, element: Int) -> Int {
    var i = 0, j = 0

    while i < array.count {
        defer { i += 1 }
        if array[i] == element {
            continue
        }

        array[j] = array[i]
        j += 1
    }

    // NOTE: In order to remove the remaining elements.
    if array.count >= j+1 {
        array.removeSubrange(j..<array.count)
    }

    return j
}


class RemoveElementTest: XCTestCase {

    func testRemoveElement() {
        var a: Array<Int>

        a = [1, 2, 3, 4, 5, 6]
        XCTAssertEqual(removeElement(&a, element: 2), 5, "")

        a = [2, 2]
        XCTAssertEqual(removeElement(&a, element: 2), 0, "")

        a = []
        XCTAssertEqual(removeElement(&a, element: 3), 0, "")
    }
    
}
