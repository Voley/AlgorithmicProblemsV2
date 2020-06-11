
// Problem code
func search(_ nums: [Int], _ target: Int) -> Int {
	return search_helper(nums, target, 0, nums.count - 1)
}

func search_helper(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {

	if left > right {
		return -1
	}

	let mid = (left + right) / 2
	// right part is good
	if nums[mid] <= nums[right] {
		// we fall for it
		if target >= nums[mid] && target <= nums[right] {
			return binary_search(nums, target, mid, right)
		}
		// we don't fall for it
		else {
			return search_helper(nums, target, left, mid - 1)
		}
	}

	// left part is good
	if nums[mid] >= nums[left] {
		// we fall for it
		if target >= nums[left] && target <= nums[mid]{
			return binary_search(nums, target, left, mid)
		}
		//we don't fall for it
		else {
			return search_helper(nums, target, mid + 1, right)
		}
	}
	
	return -1
}

func binary_search(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
	var left = left
	var right = right
	while left <= right {
		let mid = (left + right) / 2
		if nums[mid] == target {
			return mid
		} else if target > nums[mid] {
			left = mid + 1
		} else {
			right = mid - 1
		}
	}
	return -1
}
