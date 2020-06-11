
// Problem code
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
	var table = Dictionary<Int, Int>() // value, frequency
	for item in nums {
		if let found = table[item] {
			table[item] = found + 1
		} else {
			table[item] = 1
		}
	}
	
	var freqs = [NumberFreq]()
	for (value, frequency) in table {
		freqs.append(NumberFreq(value: value, freq: frequency))
	}
	
	freqs.sort() { $0.freq > $1.freq }
	
	return freqs.prefix(k).map() { $0.value }
}

struct NumberFreq {
    var value: Int
    var freq: Int
}
