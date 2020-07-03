// Problem code
func majorityElement(_ nums: [Int]) -> Int {
	
	var element = nums[0]
	var count = 1
	
	for i in 1..<nums.count {
		if nums[i] == element {
			count += 1
		} else {
			count -= 1
		}
		
		if count <= 0 {
			element = nums[i]
			count = 1
		}
	}
	return element
}
