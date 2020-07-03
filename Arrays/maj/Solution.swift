// Problem code
func maxArea(_ height: [Int]) -> Int {
	var left = 0
	var right = height.count - 1
	var maximum = 0
	while left < right {
		let side = min(height[left], height[right])
		let square = side * (right - left)
		maximum = max(square, maximum)
		
		if height[left] < height[right] {
			left += 1
		} else {
			right -= 1
		}
	}
	return maximum
}
