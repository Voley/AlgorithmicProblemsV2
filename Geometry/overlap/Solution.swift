
// Problem code
func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
    let (x1, y1, x2, y2) = (rec1[0], rec1[1], rec1[2], rec1[3])
    let (x3, y3, x4, y4) = (rec2[0], rec2[1], rec2[2], rec2[3])
    return linesIntersect(x1, x2, x3, x4) && linesIntersect(y1, y2, y3, y4)
}

func linesIntersect(_ x1: Int, _ x2: Int, _ x3: Int, _ x4: Int) -> Bool {
    return max(x1, x3) < min(x2, x4)
}

// Setup
let rec1 = [0,0,2,2]
let rec2 = [1,1,3,3]

print("Does intersection exist between \(rec1) and \(rec2)?")
let a = isRectangleOverlap(rec1, rec2)
print(a)
