struct Tile {
    let value: Int?

    init(_ value: Int?) {
        self.value = value
    }

    static func empty() -> Tile {
        return Tile(nil)
    }
}