
// Problem code
func combine(_ n: Int, _ k: Int) -> [[Int]] {
	var result = [[Int]]()
	var temp = [Int]()
	var set = Set<Int>()
	backtrack(1, n, k, &result, &temp, &set)
	return result
}

func backtrack(_ lowerLimit: Int, _ limit: Int, _ size: Int, _ result: inout [[Int]], _ temp: inout [Int], _ used: inout Set<Int>) {
	
	if temp.count == size {
		result.append(temp)
		return
	}
	
	if lowerLimit > limit {
		return
	}
	
	for digit in lowerLimit...limit {
		if used.contains(digit) {
			continue
		}
		// use it
		temp.append(digit)
		used.insert(digit)
		
		// backtrack
		backtrack(digit + 1, limit, size, &result, &temp, &used)
		
		// unuse it
		_ = temp.popLast()
		used.remove(digit)
	}
}
