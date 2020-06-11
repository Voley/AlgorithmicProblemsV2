
// Problem code
func mySqrt(_ x: Int) -> Int {
	var left = 1
	var right = x
	
	while left <= right {
		let mid = (left + right) / 2
		let result = mid * mid
		if x >= result && x < (mid + 1) * (mid + 1) {
			return mid
		} else if result < x {
			left = mid + 1
		} else {
			right = mid - 1
		}
	}
	return 0
}
