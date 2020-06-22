
// Problem code
func coinChange(_ coins: [Int], _ amount: Int) -> Int {
	var minCoins = Array(repeating: amount + 1, count: amount + 1)
	minCoins[0] = 0
	for sum in 1..<minCoins.count {
		for coin in coins {
			if sum >= coin {
				minCoins[sum] = min(minCoins[sum], minCoins[sum - coin] + 1)
			}
		}
	}
	if minCoins[amount] == amount + 1 {
		return -1
	}
	return minCoins[amount]
}
