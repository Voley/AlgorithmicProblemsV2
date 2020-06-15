
// Problem code
func arraysIntersection(_ arr1: [Int], _ arr2: [Int], _ arr3: [Int]) -> [Int] {
	if arr1.count == 0  || arr2.count == 0 || arr3.count == 0 {
		return []
	}
	
	var idx1 = 0
	var idx2 = 0
	var idx3 = 0
	var result = [Int]()
	
	while idx1 < arr1.count && idx2 < arr2.count && idx3 < arr3.count {
		if arr1[idx1] == arr2[idx2] && arr1[idx1] == arr3[idx3] {
			result.append(arr1[idx1])
		}
		let minimum = min(arr1[idx1], arr2[idx2], arr3[idx3])
		if arr1[idx1] == minimum {
			idx1 += 1
		}
		if arr2[idx2] == minimum {
			idx2 += 1
		}
		if arr3[idx3] == minimum {
			idx3 += 1
		}
	}
	return result
}
