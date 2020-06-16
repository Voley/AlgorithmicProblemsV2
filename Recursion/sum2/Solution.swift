
// Problem code
func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
	var result = [[Int]]()
	var temp = [Int]()
	backtrack(0, candidates.sorted(), target, &result, &temp)
	return result
}

func backtrack(_ startIndex: Int, _ candidates: [Int], _ target: Int, _ result: inout [[Int]], _ temp: inout [Int]) {
	if startIndex > candidates.count || target < 0 {
		return
	}
	
	if target == 0 {
		result.append(temp)
		return
	}
	
	var sum = target
	for i in startIndex..<candidates.count {
		if i > startIndex && candidates[i] == candidates[i - 1] {
			continue
		}
		let candidate = candidates[i]
		if candidate > sum {
			return
		}
		
		// use it
		sum -= candidate
		temp.append(candidate)
		
		// backtrack
		backtrack(i + 1, candidates, sum, &result, &temp)
		
		// unuse it
		sum += candidate
		_ = temp.popLast()
	}
}
