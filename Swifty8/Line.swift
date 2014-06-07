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
        let a: Int?[] = tiles.map { $0.value }
        let b: Int[] = compact(a)
        let c: Int[][] = group(b)
        let d: Int[][] = c.map { combine($0) }
        let e: Int[] = d.reduce([], +)
        let f: Tile[] = e.map { Tile($0) }
        let g: Tile[] = pad(f, Tile.empty(), tiles.count)

        tiles = g
    }
}