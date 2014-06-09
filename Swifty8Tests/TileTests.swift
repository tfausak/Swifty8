import Swifty8
import XCTest

class TileTests: Swifty8Tests {
    func testEmpty() {
        XCTAssertEqual(Tile.empty(), Tile(nil))
    }

    func testRandom() {
        srand(0)
        XCTAssertEqual(Tile.random(), Tile(4))
        srand(1)
        XCTAssertEqual(Tile.random(), Tile(2))
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

    func testPrintable() {
        XCTAssertEqual(Tile(nil).description, " ")
        XCTAssertEqual(Tile(2_048).description, "2048")
    }

    func testEquatable() {
        let a = Tile(nil)
        let b = Tile(2_048)

        XCTAssertEqual(a, a)
        XCTAssertNotEqual(a, b)
        XCTAssertEqual(b, b)
    }
}