
// Problem code
func maxSubArray(_ nums: [Int]) -> Int {
	var prev = nums[0]
	var maximum = nums[0]
	
	for i in 1..<nums.count {
		prev = max(prev + nums[i], nums[i])
		maximum = max(prev, maximum)
	}
	return maximum
}
