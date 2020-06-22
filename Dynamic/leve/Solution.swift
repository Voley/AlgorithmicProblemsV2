
// Problem code
func minDistance(_ word1: String, _ word2: String) -> Int {
	var memo = Dictionary<[Int], Int>()
	return minDistanceRecursive(Array(word1), Array(word2), 0, 0, &memo)
}

func minDistanceRecursive(_ word1: Array<Character>, _ word2: Array<Character>, _ idx1: Int, _ idx2: Int, _ memo: inout Dictionary<[Int], Int>) -> Int {
	if idx1 == word1.count && idx2 == word2.count {
		return 0
	}
	
	if idx1 == word1.count {
		return word2.count - idx2
	}
	
	if idx2 == word2.count {
		return word1.count - idx1
	}
	
	if word1[idx1] == word2[idx2] {
		return minDistanceRecursive(word1, word2, idx1 + 1, idx2 + 1, &memo)
	}
	
	if let found = memo[[idx1, idx2]] {
		return found
	}
	
	let insert = 1 + minDistanceRecursive(word1, word2, idx1 + 1, idx2, &memo)
	let delete = 1 + minDistanceRecursive(word1, word2, idx1, idx2 + 1, &memo)
	let replace = 1 + minDistanceRecursive(word1, word2, idx1 + 1, idx2 + 1, &memo)
	
	let result = min(insert, delete, replace)
	memo[[idx1, idx2]] = result
	return result
}
