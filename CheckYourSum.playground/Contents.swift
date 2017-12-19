/*:
 # Check Your Sum
 Source: [Advent of Code 2017](https://adventofcode.com/2017/day/2)
 */

import Foundation

//: ## Given a function:
func calculateChecksum(_ input: [[Int]]) -> Int {
    
}

/*:
 ## Calculate the checksum
 
 For each array of Int, determine the difference between the largest value and the smallest value; the checksum is the sum of all of these differences.
 
 For example, given the following input:
 
 [5 1 9 5]
 [7 5 3]
 [2 4 6 8]
 The first row's largest and smallest values are 9 and 1, and their difference is 8.
 The second row's largest and smallest values are 7 and 3, and their difference is 4.
 The third row's difference is 6.
 In this example, the spreadsheet's checksum would be 8 + 4 + 6 = **18**.

 */

import XCTest
class CalculateChecksumTests: XCTestCase {
    
    func testCalculateChecksum() {
        XCTAssertEqual(
            calculateChecksum([[5, 1, 9, 5], [7, 5, 3], [2, 4, 6, 8]]), 18)
    }
    
}
CalculateChecksumTests.defaultTestSuite.run()
