//: # Find the Outlier
import Foundation

//: ## Given a function:
func findOutlier(_ numbers: [Int]) -> Int {
    
}

/*:
 ## That takes an array of even integers, except for one:
 `findOutlier([2, 4, 6, 7])`
 
 ## Or an array of odd integers, except for one:
 `findOutlier([6, 7, 9, 11])`
 */

/*:
 # Return the outlier
 
 ```
 print(findOutlier([6, 4, 9, 2])) // Returns 9
 
 print(findOutlier([3, 12, 7, 89])) // Returns 12
 ```
 */

import XCTest
class FindOutlierTests: XCTestCase {
    
    func testEven() {
        XCTAssertEqual(findOutlier([6, 4, 9, 2]), 9)
        XCTAssertEqual(findOutlier([624, 2, 7532, 234341]), 234341)
        XCTAssertEqual(findOutlier([6, 4, 4, 62, 78, 22, 33, 26, 78, 224, 74, 68, 2524, 7632, 46532]), 33)
        
        var array = [Int](repeating: 8, count: 2000)
        array.insert(234523464523, at: 1200)
        XCTAssertEqual(findOutlier(array), 234523464523)
    }
    
/*:
 ## Easy Modification:
If the challenge is too hard, only make it work for arrays of even numbers and ignore the tests below.
 */
    
    func testOdd() {
        XCTAssertEqual(findOutlier([3, 7, 8, 5]), 8)
        XCTAssertEqual(findOutlier([6243, 3, 75325, 2343412]), 2343412)
        
        var array = [Int](repeating: 9, count: 2000)
        array.insert(23452346452, at: 1200)
        XCTAssertEqual(findOutlier(array), 23452346452)
    }
    
}
FindOutlierTests.defaultTestSuite.run()

/*:
 ## Hard Modification:
 Handle negative numbers
 */

class NegativeFindOutlierTests: XCTestCase {
    
    func testNegative() {
        XCTAssertEqual(findOutlier([3, 7, -8, 5]), -8)
        XCTAssertEqual(findOutlier([-6, -4, 9, -2]), 9)
    }
}
NegativeFindOutlierTests.defaultTestSuite.run()

/*:
 ## Hard Modification:
 Add validation to your function. If incorrect data is passed to your function, return 0
*/
class InvalidDataFindOutlierTests: XCTestCase {
    
    func testInvalidData() {
        XCTAssertEqual(findOutlier([]), 0)
        XCTAssertEqual(findOutlier([1, 2, 3, 4, 5, 6]), 0)
    }
}
InvalidDataFindOutlierTests.defaultTestSuite.run()

