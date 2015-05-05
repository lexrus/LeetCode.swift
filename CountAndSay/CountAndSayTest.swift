//
//  CountAndSay.swift
//  CountAndSay
//
//  Created by Lex Tang on 5/5/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class CountAndSayTest: XCTestCase {
    
    func testCountAndSay() {
        self.measureBlock() {
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
    
}
