struct Line {
    let tiles: Tile[]

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
}