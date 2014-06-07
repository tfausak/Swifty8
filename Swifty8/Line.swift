struct Line {
    let tiles: Tile[]

    init(_ tiles: Tile[]) {
        self.tiles = tiles
    }

    var count: Int {
        return tiles.count
    }
}