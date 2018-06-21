import XCTest
import VisualTestKit

@testable import VisualTestKitExample


class CoolCustomViewTests: XCTestCase {

    override func setUp() {
        super.setUp()

        VTKSetReferenceImagesDirectory("\(type(of: self))")
    }

    func testUn() {
        _test(coolness: .un)
    }

    func testReasonably() {
        _test(coolness: .reasonably)
    }

    func testVery() {
        _test(coolness: .very)
    }

    func testExtremely() {
        _test(coolness: .extremely)
    }

    private func _test(coolness: CoolCustomView.Coolness, file: String = #file, line: UInt = #line) {
        let view = CoolCustomView(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        view.coolness = coolness
        VTKAssertView(view, name: "test-\(coolness)", decorations: [.screenScale], file: file, line: line)
    }
}
