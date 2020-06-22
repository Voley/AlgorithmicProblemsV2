
// Problem code
func uniquePaths(_ m: Int, _ n: Int) -> Int {
	var dp = Array(repeating: Array(repeating: 1, count: m), count: n)
	
	for row in 1..<dp.count {
		for col in 1..<dp[0].count {
			dp[row][col] = dp[row-1][col] + dp[row][col - 1]
		}
	}
	return dp[n-1][m-1]
}
