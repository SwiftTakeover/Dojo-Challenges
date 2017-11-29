//: # Spell It To Me
import Foundation

//: ## Given a function:
func convertToNATO(_ input: String) -> String {
    
}

/*:
 # Convert the string to the [NATO phonetic alphabet](https://en.wikipedia.org/wiki/NATO_phonetic_alphabet)
 
 As defined [here](https://en.wikipedia.org/wiki/NATO_phonetic_alphabet)
 
 ```
 print(convertToNATO("hello")) // "hotel echo lima lima alfa"
 ```
 */

import XCTest
class ConvertToNATOTests: XCTestCase {
    
    func testOneWord() {
        XCTAssertEqual(convertToNATO("sunset"), "sierra uniform november sierra echo tango")
    }
    
/*:
 ## Challenge: handle multiple words

 */
    
    func testThreeWords() {
        XCTAssertEqual(convertToNATO("how are you"), "hotel oscar whiskey alfa romeo echo yankee oscar uniform")
    }
    
/*:
 ## Challenge: handle capitalisation
 */
    
    func testCapitalisation() {
        XCTAssertEqual(convertToNATO("This is Sparta"), "Tango hotel indigo sierra indigo sierra Sierra papa alfa romeo tango alfa")
    }
    
/*:
 ## Challenge: handle punctuation
 */
    
    func testPunctuation() {
        XCTAssertEqual(convertToNATO("Say \"hello\" to my little friend!"),
                       "Sierra alfa yankee \"hotel echo lima lima oscar\" tango oscar mike yankee lima indigo tango tango lima echo foxtrot romeo indigo echo november delta!")
    }
    
}
ConvertToNATOTests.defaultTestSuite.run()
