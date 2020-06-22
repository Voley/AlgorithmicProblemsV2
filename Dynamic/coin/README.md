# Coin Change (Medium 322)
You are given coins of different denominations and a total amount of money
amount. Write a function to compute the fewest number of coins that you need to
make up that amount. If that amount of money cannot be made up by any
combination of the coins, return -1.

# Solution:

<details><summary>Click here</summary>  
Use dp array prefilled with amount + 1. dp[i] is min(dp[i], dp[i - coin] + 1).
O(amount) time, O(amount) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
