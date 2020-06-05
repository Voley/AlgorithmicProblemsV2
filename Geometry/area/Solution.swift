
// Problem code
func computeArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
    let area1 = abs(A - C) * abs(B - D)
    let area2 = abs(E - G) * abs(F - H)
    
    let (x1, x2, horizontal) = lineIntersection(A, C, E, G)
    let (x3, x4, vertical) = lineIntersection(B, D, F, H)
    
    var result = 0
    
    if horizontal && vertical {
        let intersection_area = abs(x1 - x2) * abs(x3 - x4)
        result = area1 + area2 - intersection_area
    } else {
        result = area1 + area2
    }
    return result
}

func lineIntersection(_ x1: Int, _ x2: Int, _ x3: Int, _ x4: Int) -> (x1: Int, x2: Int, intersect: Bool) {
    let a = max(x1, x3)
    let b = min(x2, x4)
    return (a, b, a < b)
}

// Setup
print("Area occupied by rects is:")
let a = computeArea(-3, 0, 3, 4, 0, -1, 9, 2)
print(a)
