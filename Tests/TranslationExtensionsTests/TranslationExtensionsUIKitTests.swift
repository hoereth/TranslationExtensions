import XCTest
@testable import TranslationExtensions

class TestController: UIViewController {
    
}

final class TranslationExtensionsUIKitTests: XCTestCase {
    func testButton() {
        let button = UIButton()
        button.setTitle("logout", for: .normal)
        
        let viewController = TestController()
        viewController.translateButton(button)
        
        XCTAssertEqual("TestController.logout", button.title(for: .normal))
    }

    static var allTests = [
        ("testButton", testButton),
    ]
}
