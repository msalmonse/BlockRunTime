import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BlockRunTimeTests.allTests),
    ]
}
#endif
