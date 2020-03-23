import XCTest

import OrderedSet

class OrderedSetCocodeTests: XCTestCase {
    func testAppendSequence() {
        var set = OrderedSet<String>()
        XCTAssertTrue(set.isEmpty)
        XCTAssertEqual(set.contents, [])

        XCTAssertTrue(set.append(["one", "two", "three"]))

        XCTAssertFalse(set.isEmpty)
        XCTAssertEqual(set.count, 3)
        XCTAssertEqual(set[0], "one")
        XCTAssertEqual(set[1], "two")
        XCTAssertEqual(set[2], "three")
        XCTAssertEqual(set.contents, ["one", "two", "three"])

        XCTAssertFalse(set.append(["one", "two"]))
        XCTAssertFalse(set.append(["one", "two", "three"]))
    }

    func testAppendingSequence() {
        let reference = OrderedSet(["one", "two", "three"])
        let set = OrderedSet(["one"])

        XCTAssertNotEqual(reference, set)
        XCTAssertEqual(reference, set.appending(["two", "three"]))
    }

    func testSubtractSequence() {
        var set = OrderedSet(["one", "two", "three"])

        set.subtract(["two", "three"])

        XCTAssertFalse(set.isEmpty)
        XCTAssertEqual(set.count, 1)
        XCTAssertEqual(set[0], "one")
        XCTAssertEqual(set.contents, ["one"])
    }

    func testSubtractingSequence() {
        let reference = OrderedSet(["one"])
        let set = OrderedSet(["one", "two", "three"])

        XCTAssertNotEqual(reference, set)
        XCTAssertEqual(reference, set.subtracting(["two", "three"]))
    }
}
