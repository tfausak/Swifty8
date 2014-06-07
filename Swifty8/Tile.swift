struct Tile {
    let value: Int?

    init(_ value: Int?) {
        self.value = value
    }

    static func empty() -> Tile {
        return Tile(nil)
    }

    static func random() -> Tile {
        var value: Int? = 2

        if randomInt(10) == 0 {
            value = 4
        }

        return Tile(value)
    }

    var rank: Int {
        return 0
    }

    var score: Int {
        return 0
    }
}

extension Tile: Printable {
    var description: String {
        return value ? value!.description : " "
    }
}