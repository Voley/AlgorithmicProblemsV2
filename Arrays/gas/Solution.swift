// Problem code
func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
	var min = Int.max
	let gasSum = gas.reduce(0, {x, y in return x + y })
	let costSum = cost.reduce(0, {x, y in return x + y })
	
	if costSum > gasSum {
		return -1
	}
	
	var index = 0
	var fill = 0
	for i in 0..<gas.count {
		fill += gas[i]
		fill -= cost[i]
		if fill < min {
			min = fill
			index = (i + 1) % gas.count
		}
	}
	return index
}
