//
//  804.swift
//  LeetCodeTests
//
//  Created by Lex on 2018/7/17.
//  Copyright © 2018 Lex Tang. All rights reserved.
//

//    International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows: "a" maps to ".-", "b" maps to "-...", "c" maps to "-.-.", and so on.
//
//    For convenience, the full table for the 26 letters of the English alphabet is given below:
//
//    [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
//    Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. For example, "cab" can be written as "-.-.-....-", (which is the concatenation "-.-." + "-..." + ".-"). We'll call such a concatenation, the transformation of a word.
//
//    Return the number of different transformations among all words we have.
//
//    Example:
//    Input: words = ["gin", "zen", "gig", "msg"]
//    Output: 2
//    Explanation:
//    The transformation of each word is:
//    "gin" -> "--...-."
//    "zen" -> "--...-."
//    "gig" -> "--...--."
//    "msg" -> "--...--."
//
//    There are 2 different transformations, "--...-." and "--...--.".
//
//
//    Note:
//
//    The length of words will be at most 100.
//    Each words[i] will have length in range [1, 12].
//    words[i] will only consist of lowercase letters.

import XCTest

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    let morseCodes = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

    return words.reduce(into: [String: Int]()) {
        let morse = $1.reduce(into: "") { result, c in
            result.append(morseCodes[Int(c.unicodeScalars.first!.value - "a".unicodeScalars.first!.value)])
        }
        $0[morse, default: 0] += 1
    }.keys.count
}

class UniqueMorseCodeWordsTest: XCTestCase {

    func testExample() {
        XCTAssertEqual(uniqueMorseRepresentations(["gin", "zen", "gig", "msg"]), 2)
    }

}
