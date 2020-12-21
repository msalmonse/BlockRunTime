import XCTest
@testable import BlockRunTime

final class BlockRunTimeTests: XCTestCase {

    func testCount() {
        let test1  = blockRunTime(count: 1000){ sin(1.0) }
        let test10 = blockRunTime(count: 10000){ sin(1.0) }
        XCTAssertGreaterThan(test10, test1)
    }

    static var allTests = [
        ("Count test", testCount),
    ]
}
