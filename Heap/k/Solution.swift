
// Problem code
func kClosest(_ points: [[Int]], _ K: Int) -> [[Int]] {
	let temp = points.sorted() { $0[0] * $0[0] + $0[1] * $0[1] <  $1[0] * $1[0] + $1[1] * $1[1] }
	return Array(temp.prefix(K))
}
