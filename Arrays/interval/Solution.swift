
// Problem code
func intervalIntersection(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
	if A.count == 0 || B.count == 0 {
		return []
	}
	
	var idx1 = 0
	var idx2 = 0
	var result = [[Int]]()
	
	while idx1 < A.count && idx2 < B.count {
		if let intersect = intersection(A[idx1], B[idx2]) {
			result.append(intersect)
		}
		if A[idx1][1] < B[idx2][1] {
			idx1 += 1
		} else {
			idx2 += 1
		}
	}
	return result
}

func intersection(_ a: [Int], _ b: [Int]) -> [Int]? {
	let start = max(a[0], b[0])
	let end = min(a[1], b[1])
	
	if start <= end {
		return [start, end]
	}
	return nil
}
