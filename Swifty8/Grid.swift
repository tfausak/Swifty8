struct Grid {
    let lines: Line[]

    init(_ lines: Line[]) {
        self.lines = lines
    }

    var width: Int {
        return lines.isEmpty ? 0 : lines[0].count
    }

    var height: Int {
        return lines.count
    }

    static func empty(width: Int, _ height: Int) -> Grid {
        var lines: Line[] = []
        for _ in 0..height {
            lines.append(Line.empty(width))
        }

        return Grid(lines)
    }

    var tiles: Tile[] {
        return lines.map { $0.tiles }.reduce([], +)
    }
}