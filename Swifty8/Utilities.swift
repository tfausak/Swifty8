import func Cocoa.rand

func randomInt(limit: Int) -> Int {
    return Int(rand()) % limit
}