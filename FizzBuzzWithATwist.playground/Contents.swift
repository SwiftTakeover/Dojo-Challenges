//: # Fizz Buzz - With a Twist
import Foundation

//: ## Given a function:
func fizzBuzz(_ numbers: [Int]) -> [String] {
    
}

/*:
 ## That takes an array of consecutive integers
 `fizzBuzz([1, 2, 3, 4, 5])`
 */

/*:
 ## Return an array of the same length consisting of the following strings
 - 'Fizz' if the number at the same index is divisible by 3
 - 'Buzz' if the number at the same index is divisible by 5
 - 'FizzBuzz' if the number at the same index is divisible by 3 and 5
 - Otherwise, the number converted to a String
 
 
 ```
 print(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]))
 // Returns 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz
 ```
 */

/*:
 ## Further Trials:
 - TDD your solution
 - 'Fizz' if the number at the same index is divisible by 3, or has a 3 in it
 - 'Buzz' if the number at the same index is divisible by 5, or has a 5 in it
 - Convert the array to a Range parameter
 - Rather than converting the number directly to a string if it is neither Fizz nor Buzz (e.g. '7' or '8'), return the text representation of the number (e.g. 'Seven' or 'Eight')
 */

import XCTest
class FizzBuzzTests: XCTestCase {
    
}
FizzBuzzTests.defaultTestSuite.run()
