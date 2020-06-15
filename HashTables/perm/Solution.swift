
// Problem code
func canPermutePalindrome(_ s: String) -> Bool {
	var dict = Dictionary<Character, Int>()
	
	for letter in s {
		let count = dict[letter] ?? 0
		dict[letter] = count + 1
	}
	
	var foundOdd = false
	for (_, value) in dict {
		if value % 2 != 0 {
			if foundOdd {
				return false
			}
			foundOdd = true
		}
	}
	return true
}
