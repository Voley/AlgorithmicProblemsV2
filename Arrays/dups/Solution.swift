
// Problem code
func findDuplicates(_ nums: [Int]) -> [Int] {
	var set = Set<Int>()
	var result = [Int]()
	for num in nums {
		if set.contains(num) {
			result.append(num)
		}
		set.insert(num)
	}
	return result
}
