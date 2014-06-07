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
        return true
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
}
