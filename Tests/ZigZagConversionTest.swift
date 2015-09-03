//
//  ZigZagConversion.swift
//  ZigZagConversion
//
//  Created by Lex Tang on 4/16/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class ZigZagConversionTest: XCTestCase {
    
    func testZigZagConvert() {
        self.measureBlock() {
            XCTAssertEqual(ZigZagConversion.convert0("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR", "")
            XCTAssertEqual(ZigZagConversion.convert1("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR", "")
        }
    }
    
}
