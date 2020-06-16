
// Problem code
func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
	var result = [[Int]]()
	var temp = [Int]()
	backtrack(candidates.sorted(), target, 0, &temp, &result)
	return result
}

func backtrack(_ candidates: [Int], _ target: Int, _ startIndex: Int, _ temp: inout [Int], _ result: inout [[Int]]) {
	if startIndex > candidates.count || target < 0 {
		return
	}
	
	if target == 0 {
		result.append(temp)
		return
	}
	
	var sum = target
	
	for i in startIndex..<candidates.count {
		let candidate = candidates[i]
		
		if candidate > sum {
			return
		}
		
	// use it
		sum -= candidate
		temp.append(candidate)
	
	// backtrack
		backtrack(candidates, sum, i, &temp, &result)
	
	// unuse it
		sum += candidate
		_ = temp.popLast()
	}
}
