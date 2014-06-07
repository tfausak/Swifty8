struct Grid {
    let lines: Line[]

    init(_ lines: Line[]) {
        self.lines = lines
    }

    var width: Int {
        return lines[0].count
    }

    var height: Int {
        return lines.count
    }
}