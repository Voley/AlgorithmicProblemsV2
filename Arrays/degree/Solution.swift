
// Problem code
func findShortestSubArray(_ nums: [Int]) -> Int {
	var mapping = Dictionary<Int, [Int]>()
	var degree = 0
	for (index, value) in nums.enumerated() {
		if let arr = mapping[value] {
			mapping[value] = arr + [index]
		} else {
			mapping[value] = [index]
		}
		degree = max(mapping[value]!.count, degree)
	}
	var total = Int.max
	for (_, value) in mapping {
		if value.count < degree {
			continue
		}
		let current = value.last! - value[0] + 1
		total = min(total, current)
	}
	return total
}
