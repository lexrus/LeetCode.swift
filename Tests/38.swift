//
//  CountAndSay.swift
//  CountAndSay
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//


/*
The count-and-say sequence is the sequence of integers beginning as follows:
1, 11, 21, 1211, 111221, ...

1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.
Given an integer n, generate the nth sequence.

Note: The sequence of integers will be represented as a string.
*/

import Foundation
import XCTest


func countAndSay(_ n: Int) -> String {
    if n == 0 {
        return ""
    }

    if n == 1 {
        return "1"
    }

    var s = "1"
    var i = 1

    while i < n {
        var cnt = 0
        var last = s[0]
        var newS = ""

        for j in 0...s.characters.count {
            if s[j] == last {
                cnt += 1
            } else {
                newS.append(Character("\(cnt)"))
                newS.append(last!)
                last = s[j]
                cnt = 1
            }
        }
        s = newS
        i += 1
    }

    return s
}


class CountAndSayTest: XCTestCase {

    func testCountAndSay() {
        XCTAssertEqual(countAndSay(0),  "", "")
        XCTAssertEqual(countAndSay(1),  "1", "")
        XCTAssertEqual(countAndSay(2),  "11", "")
        XCTAssertEqual(countAndSay(3),  "21", "")
        XCTAssertEqual(countAndSay(4),  "1211", "")
        XCTAssertEqual(countAndSay(5),  "111221", "")
        XCTAssertEqual(countAndSay(6),  "312211", "")
        XCTAssertEqual(countAndSay(7),  "13112221", "")
        XCTAssertEqual(countAndSay(8),  "1113213211", "")
        XCTAssertEqual(countAndSay(9),  "31131211131221", "")
        XCTAssertEqual(countAndSay(10), "13211311123113112211", "")
        XCTAssertEqual(countAndSay(11), "11131221133112132113212221", "")
        XCTAssertEqual(countAndSay(12), "3113112221232112111312211312113211", "")
        XCTAssertEqual(countAndSay(13), "1321132132111213122112311311222113111221131221", "")
        XCTAssertEqual(countAndSay(14), "11131221131211131231121113112221121321132132211331222113112211", "")
        XCTAssertEqual(countAndSay(15), "311311222113111231131112132112311321322112111312211312111322212311322113212221", "")
    }

}
