import XCTest
@testable import BGUtility

final class BGUtilityTests: XCTestCase {
    func testProperIndexOfArray()  {
        let array = [1,2,3,4,5]
        let index = array[safe: 0]
        XCTAssert(index == 1)
    }
    
    func testMissingProperIndexOfArray()  {
        let array = [1,2,3,4,5]
        let index = array[safe: 9]
        XCTAssert(index == nil)
    }
}
