
// Problem code
func isPerfectSquare(_ num: Int) -> Bool {
	var left = 1
	var right = num
	
	while left <= right {
		let mid = (left + right) / 2
		if num == mid * mid {
			return true
		} else if num > mid * mid {
			left = mid + 1
		} else {
			right = mid - 1
		}
	}
	
	return false
}
