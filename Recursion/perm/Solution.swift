
// Problem code
func permute(_ nums: [Int]) -> [[Int]] {
	var used = Set<Int>()
	var temp = [Int]()
	var result = [[Int]]()
	backtrack(nums, &result, &temp, &used)
	return result
}

func backtrack(_ nums: [Int], _ result: inout [[Int]], _ temp: inout [Int], _ used: inout Set<Int>) {
	if temp.count == nums.count {
		result.append(temp)
		return
	}
	
	for i in 0..<nums.count {
		let item = nums[i]
		if used.contains(item) {
			continue
		}
		
		// use it
		temp.append(item)
		used.insert(item)
		
		// backtrack
		backtrack(nums,  &result, &temp, &used)
		
		// unuse it
		_ = temp.popLast()
		used.remove(item)
	}
}
