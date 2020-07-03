// Problem code
func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
	let sorted = nums.sorted()
	var closeSum = Int.max
	var closeDiff = Int.max
	
	for current in 0..<sorted.count - 2 {
		var left = current + 1
		var right = sorted.count - 1
		
		while left < right {
			let sum = sorted[current] + sorted[left] + sorted[right]
			let diff = abs(sum - target)

			if sum == target {
				return sum
			} else if sum > target {
				right -= 1
			} else if sum < target {
				left += 1
			}
			
			if diff < closeDiff {
				closeSum = sum
				closeDiff = diff
			}
		}
	}
	return closeSum
}
