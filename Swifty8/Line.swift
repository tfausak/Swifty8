struct Line {
    var tiles: Tile[]

    init(_ tiles: Tile[]) {
        self.tiles = tiles
    }

    var count: Int {
        return tiles.count
    }

    static func empty(count: Int) -> Line {
        var tiles: Tile[] = []
        for _ in 0..count {
            tiles.append(Tile.empty())
        }

        return Line(tiles)
    }

    var emptyIndexes: Int[] {
        var result: Int[] = []

        for (index, tile) in enumerate(tiles) {
            if !tile.value {
                result.append(index)
            }
        }

        return result
    }

    func randomEmptyIndex() -> Int? {
        let indexes = emptyIndexes
        if indexes.isEmpty {
            return nil
        }

        return indexes[randomInt(indexes.count)]
    }

    mutating func set(tile: Tile, _ index: Int) {
        assert(index < tiles.count)

        tiles[index] = tile
    }

    var score: Int {
        return tiles.map { $0.score }.reduce(0, +)
    }

    mutating func shift() {
        var tiles: Tile[] = []
        var buffer: Tile? = nil

        for (index, tile) in enumerate(self.tiles) {
            if let value = tile.value {
                if let other = buffer {
                    if tile == other {
                        tiles.append(Tile(value * 2))
                        buffer = nil
                    } else {
                        tiles.append(other)
                        buffer = tile
                    }
                } else {
                    buffer = tile
                }
            }
        }

        if let tile = buffer {
            tiles.append(tile)
        }

        while tiles.count < self.tiles.count {
            tiles.append(Tile.empty())
        }

        self.tiles = tiles
    }

    func canShift() -> Bool {
        var other = self
        other.shift()

        return self != other
    }
}

extension Line: Equatable {}
func ==(lhs: Line, rhs: Line) -> Bool {
    return lhs.tiles == rhs.tiles
}