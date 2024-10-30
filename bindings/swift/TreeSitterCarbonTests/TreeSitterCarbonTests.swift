import XCTest
import SwiftTreeSitter
import TreeSitterCarbon

final class TreeSitterCarbonTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_carbon())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Carbon grammar")
    }
}
