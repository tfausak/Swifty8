import Swifty8
import XCTest

class LineTests: Swifty8Tests {
    func testShift() {
        self.measureBlock() {
            var line: Line

            for _ in 0..10_000 {
                line = Line([Tile(2), Tile(nil), Tile(2), Tile(4)])
                line.shift()
            }
        }
    }
}