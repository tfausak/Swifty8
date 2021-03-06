struct Game {
    let settings: Settings
    var grid: Grid

    init() {
        self.init(settings: Settings())
    }

    init(settings: Settings) {
        self.settings = settings
        self.grid = Grid.empty(settings.gridWidth, settings.gridHeight)
        grid.randomlyAdd(settings.initialTileCount)
    }

    mutating func move(direction: Direction) {
        grid.move(direction)
        grid.randomlyAdd()
    }

    func canMove(direction: Direction) -> Bool {
        return grid.canMove(direction)
    }

    var width: Int {
        return grid.width
    }

    var height: Int {
        return grid.height
    }

    var tiles: Tile[] {
        return grid.tiles
    }

    var score: Int {
        return grid.score
    }

    var hasWon: Bool {
        for tile in tiles {
            if let value = tile.value {
                if value > settings.maximumTileValue {
                    return true
                }
            }
        }

        return false
    }
}
