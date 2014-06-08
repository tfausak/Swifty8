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
        if let number = value {
            return log_2(number)
        } else {
            return 0
        }
    }

    var score: Int {
        if let number = value {
            return number * (rank - 1)
        } else {
            return 0
        }
    }
}

extension Tile: Printable {
    var description: String {
        return value ? value!.description : " "
    }
}

extension Tile: Equatable {}
func ==(lhs: Tile, rhs: Tile) -> Bool {
    return lhs.value == rhs.value
}