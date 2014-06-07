struct Game {
    let grid: Grid

    init() {
        self.init(Grid([Line([Tile(nil)])]))
    }

    init(_ grid: Grid) {
        self.grid = grid
    }

    func move(direction: Direction) {
    }

    func canMove(direction: Direction) -> Bool {
        return false
    }
}
