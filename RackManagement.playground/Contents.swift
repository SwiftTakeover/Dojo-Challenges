//: # Rack management

/*:
 ## Source
 https://www.reddit.com/r/dailyprogrammer/comments/5go843/20161205_challenge_294_easy_rack_management_1/
 */

import Foundation

//: ## Given a function:
func scrabble(_ rack: String, _ word: String) -> Bool {
    
}

/*:
 ## That takes two Strings – a set of 7 letter tiles and a word:
 `scrabble("ladilmy", "daily")`
 */

/*:
 # Return a Bool that determines whether you can make the given word using the given tiles.
 
 ```
 print(scrabble("ladilmy", "daily")) // Prints true
 
 print(scrabble("eerriin", "eerie")) // Prints false
 
 print(scrabble("orrpgma", "program")) // Prints true
 
 print(scrabble("orppgma", "program")) // Prints false
 ```
 */

import XCTest
class RackManagementTests: XCTestCase {
    
    func testScrabble() {
        XCTAssertTrue(scrabble("ladilmy", "daily"))
        XCTAssertFalse(scrabble("eerriin", "eerie"))
        XCTAssertTrue(scrabble("orrpgma", "program"))
        XCTAssertFalse(scrabble("orppgma", "program"))
    }
    
}
RackManagementTests.defaultTestSuite.run()

/*:
 ## Optional Bonus 1
 Handle blank tiles (represented by "?").
 These are "wild card" tiles that can stand in for any single letter.
 */
class BlankTilesRackManagementTests: XCTestCase {
    
    func testBlankTiles() {
        XCTAssertTrue(scrabble("pizza??", "pizzazz"))
        XCTAssertFalse(scrabble("piizza?", "pizzazz"))
        XCTAssertTrue(scrabble("a??????", "program"))
        XCTAssertFalse(scrabble("b??????", "program"))
    }
    
}
BlankTilesRackManagementTests.defaultTestSuite.run()

/*:
 ## Optional Bonus 2
 Given a set of up to 20 letter tiles, determine the longest word from the enable1 English word list that can be formed using the tiles.
 
 ```
 longest("dcthoyueorza") ->  "coauthored"
 longest("uruqrnytrois") -> "turquois"
 longest("rryqeiaegicgeo??") -> "greengrocery"
 longest("udosjanyuiuebr??") -> "subordinately"
 longest("vaakojeaietg????????") -> "ovolactovegetarian"
 ```
 In the case of a tie, any word that's tied for the longest is a valid output.
 
 Use the `downloadWordList` function to get the word list.
 */

/// Synchronously downloads words for the Optional Bonus 2
/// - returns: English word list
func downloadWordList() -> [String] {
    let url = URL(string: "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/dotnetperls-controls/enable1.txt")
    let semaphore = DispatchSemaphore(value: 0)
    var result: String!
    URLSession.shared.dataTask(with: url!, completionHandler: {(data, response, error) in
        result = String(data: data!, encoding: .utf8)
        semaphore.signal()
    }).resume()
    semaphore.wait()
    return result.split(separator: "\r\n").map { String($0) }
}

func longest(_ rack: String) -> String {
    
}

class LongestWordRackManagementTests: XCTestCase {
    
    func testLongestWord() {
        XCTAssertEqual(longest("dcthoyueorza"), "coauthored")
        XCTAssertEqual(longest("uruqrnytrois"), "turquois")
        XCTAssertEqual(longest("rryqeiaegicgeo??"), "greengrocery")
        XCTAssertEqual(longest("udosjanyuiuebr??"), "subordinately")
        XCTAssertEqual(longest("vaakojeaietg????????"), "ovolactovegetarian")
    }
    
}
LongestWordRackManagementTests.defaultTestSuite.run()
