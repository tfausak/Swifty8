import Swifty8
import XCTest

class TileTest: XCTestCase {
    func testEmpty() {
        let a = Tile.empty()
        let b = Tile(nil)

        XCTAssertEqual(a, b)
    }

    func testRandom() {
        let a = Tile.random()
        var b = Tile(2)
        if a != b {
            b = Tile(4)
        }

        XCTAssertEqual(a, b)
    }

    func testValue() {
        XCTAssertEqualObjects(Tile(nil).value, nil)
        XCTAssertEqualObjects(Tile(2_048).value, 2_048)
    }

    func testRank() {
        XCTAssertEqual(Tile(nil).rank, 0)
        XCTAssertEqual(Tile(2_048).rank, 11)
    }

    func testScore() {
        XCTAssertEqual(Tile(nil).score, 0)
        XCTAssertEqual(Tile(2_048).score, 20_480)
    }

    func testDescription() {
        XCTAssertEqual(Tile(nil).description, " ")
        XCTAssertEqual(Tile(2_048).description, "2048")
    }

    func testEqual() {
        let a = Tile(nil)
        let b = Tile(2_048)

        XCTAssertEqual(a, a)
        XCTAssertNotEqual(a, b)
        XCTAssertEqual(b, b)
    }
}