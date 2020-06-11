
// Problem code
func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
	let s = nums.sorted()
	return s[s.count - k]
}
