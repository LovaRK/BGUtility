//
//  Array+ExtensionTests.swift

//  BGUtility
//
//  Created by Rama Krishna on 11/26/25.
//

import XCTest
@testable import BGUtility

final class ArrayExtentionTest: XCTestCase {
    
    func testSafeIndex_ValidIndexReturnsElement() {
        let array = [10, 20, 30]
        let value = array[safeIndex: 1]
        XCTAssertEqual(value, 20)
    }

    func testSafeIndex_NegativeIndexReturnsNil() {
        let array = [1, 2, 3]
        let value = array[safeIndex: -1]
        XCTAssertNil(value)
    }

    func testSafeIndex_IndexEqualToCountReturnsNil() {
        let array = ["a", "b"]
        let value = array[safeIndex: 2]
        XCTAssertNil(value)
    }

    func testSafeIndex_IndexGreaterThanCountReturnsNil() {
        let array = [0]
        let value = array[safeIndex: 5]
        XCTAssertNil(value)
    }

    func testSafeIndex_EmptyArrayAlwaysNil() {
        let array: [Int] = []
        XCTAssertNil(array[safeIndex: 0])
        XCTAssertNil(array[safeIndex: -1])
        XCTAssertNil(array[safeIndex: 1])
    }

    func testSafeIndex_FirstIndexReturnsElement() {
        let array = [7, 8, 9]
        let value = array[safeIndex: 0]
        XCTAssertEqual(value, 7)
    }

    func testSafeIndex_LastValidIndexReturnsElement() {
        let array = ["x", "y", "z"]
        let value = array[safeIndex: array.count - 1]
        XCTAssertEqual(value, "z")
    }

}
