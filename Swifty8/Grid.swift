struct Grid {
    let lines: Line[]

    init(_ lines: Line[]) {
        self.lines = lines
    }

    var width: Int {
        return lines.isEmpty ? 0 : lines[0].count
    }

    var height: Int {
        return lines.count
    }

    static func empty(width: Int, _ height: Int) -> Grid {
        var lines: Line[] = []
        for _ in 0..height {
            lines.append(Line.empty(width))
        }

        return Grid(lines)
    }

    var tiles: Tile[] {
        return lines.map { $0.tiles }.reduce([], +)
    }

    var emptyPoints: Point[] {
        var result: Point[] = []

        for (y, line) in enumerate(lines) {
            result.extend(line.emptyIndexes.map { Point(x: $0, y: y) })
        }

        return result
    }

    func randomEmptyPoint() -> Point? {
        let points = emptyPoints
        if points.isEmpty {
            return nil
        }

        return points[randomInt(points.count)]
    }

    mutating func set(tile: Tile, _ point: Point) {
        assert(point.y < lines.count)

        lines[point.y].set(tile, point.x)
    }

    mutating func randomlySet(tile: Tile) {
        if let point = randomEmptyPoint() {
            set(tile, point)
        }
    }

    mutating func randomlyAdd() {
        randomlySet(Tile.random())
    }

    mutating func randomlyAdd(count: Int) {
        for _ in 0..count {
            randomlyAdd()
        }
    }
}