import Cocoa

func randomInt(limit: Int) -> Int {
    return Int(rand()) % limit
}

// TODO: Can this work for ragged or empty multi-dimensional arrays?
func transpose<T>(matrix: T[][]) -> T[][] {
    if matrix.isEmpty || matrix[0].isEmpty {
        return matrix
    }

    let width = matrix.count
    let height = matrix[0].count
    let value = matrix[0][0]

    var result: T[][] = []
    for _ in 0..height {
        result.append(Array(count: width, repeatedValue: value))
    }

    for (i, row) in enumerate(matrix) {
        assert(row.count == height)

        for (j, cell) in enumerate(row) {
            result[j][i] = cell
        }
    }
    
    return result
}