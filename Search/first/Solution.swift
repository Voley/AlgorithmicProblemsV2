
// Problem code
func firstBadVersion(_ n: Int) -> Int {
	var left = 0
	var right = n
	var latest = 0
	while left <= right {
		let mid = (left + right) / 2
		let result = isBadVersion(mid)
		if result {
			latest = mid
			right = mid - 1
		} else {
			left = mid + 1
		}
	}
	return latest
}

func isBadVersion(_ n: Int) -> Bool {
	return true
}
