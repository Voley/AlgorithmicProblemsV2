
// Problem code
func containsDuplicate(_ nums: [Int]) -> Bool {
	var s = Set<Int>()
	
	for item in nums {
		if s.contains(item) {
			return true
		}
		s.insert(item)
	}
	return false
}
