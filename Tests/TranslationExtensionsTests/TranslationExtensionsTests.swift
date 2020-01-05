import XCTest
@testable import TranslationExtensions

final class TranslationExtensionsTests: XCTestCase, Translatable {
    func testExample() {
        let translation = self.translateKey("dummy")
        XCTAssertEqual("TranslationExtensionsTests.dummy", translation)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
