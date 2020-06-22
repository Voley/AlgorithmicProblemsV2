
# Problem code
def uniquePaths(m, n):
    dp = [[1] * m for x in range(n)]

    for row in range(1, len(dp)):
        for col in range(1, len(dp[0])):
            dp[row][col] = dp[row - 1][col] + dp[row][col - 1]

    return dp[n-1][m-1]
