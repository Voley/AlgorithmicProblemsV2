
// Problem code
func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
	var set = Set<Int>()
	for item in nums1 {
		set.insert(item)
	}
	var result = Set<Int>()
	for item in nums2 {
		if set.contains(item) {
			result.insert(item)
		}
	}
	return Array(result)
}

// Setup
let a = [1, 4, 3, 6, 7, 2]
let b = [4, 2]

print(a)
print(b)
print("Intersection of two arrays: \(intersection(a, b))")
