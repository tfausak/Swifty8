import Cocoa

func combine(array: Int[]) -> Int[] {
    if array.count < 2 {
        return array
    }

    return [array[0] + array[1]] + array[2..array.endIndex]
}

func compact<T>(array: T?[]) -> T[] {
    var result: T[] = []

    for optional in array {
        if let element = optional {
            result.append(element)
        }
    }
    
    return result
}

func group<T: Equatable>(var array: T[]) -> T[][] {
    if array.isEmpty {
        return []
    }

    let first = array.removeAtIndex(0)
    var result = [first]

    while !array.isEmpty && first == array[0] {
        result.append(array.removeAtIndex(0))
    }
    
    return [result] + group(array)
}

func log_2(var number: Int) -> Int {
    var result = 0

    while number > 1 {
        number /= 2
        result += 1
    }

    return result
}

func pad<T>(var array: Array<T>, value: T, var count: Int) -> Array<T> {
    count = count - array.count
    if count < 0 {
        count = 0
    }

    array.extend(Array(count: count, repeatedValue: value))
    
    return array
}

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