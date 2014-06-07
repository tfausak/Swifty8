struct Game {
    let settings: Settings
    let grid: Grid

    init() {
        self.init(settings: Settings())
    }

    init(settings: Settings) {
        self.settings = settings
        self.grid = Grid.empty(settings.gridWidth, settings.gridHeight)
        grid.randomlyAdd(settings.initialTileCount)
    }

    func move(direction: Direction) {
    }

    func canMove(direction: Direction) -> Bool {
        return false
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
