
// Problem code
func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
	
	var left = 0
	var right = nums.count - 1
	
	var firstFoundAt = -1
	var start = -1
	var end = -1
	
	// search start
	while left <= right {
		let mid = (left + right) / 2
		if nums[mid] == target {
			if firstFoundAt == -1 {
				firstFoundAt = mid
			}
			start = mid
			right = mid - 1
		} else if nums[mid] > target {
			right = mid - 1
		} else {
			left = mid + 1
		}
	}
	
	// never found element
	if firstFoundAt == -1 {
		return [-1, -1]
	}
	
	// search end
	left = firstFoundAt
	right = nums.count - 1
	
	while left <= right {
		let mid = (left + right) / 2
		if nums[mid] == target {
			end = mid
			left = mid + 1
		} else if nums[mid] > target {
			right = mid - 1
		} else {
			left = mid + 1
		}
	}
	return [start, end]
}
