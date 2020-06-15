
// Support code
func merge(_ intervals: [[Int]]) -> [[Int]] {
	if intervals.count < 2 {
		return intervals
	}
	
	var result = [[Int]]()
	
	for interval in intervals.sorted(by: { $0[0] < $1[0] }) {
		if result.count > 0 && result[result.count - 1][1] >= interval[0] {
			result[result.count - 1][1] = max(result[result.count - 1][1], interval[1])
		} else {
			result.append(interval)
		}
	}
	
	return result
}
