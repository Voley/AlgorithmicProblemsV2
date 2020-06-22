
# Problem code
def coinChange(coins, amount):
    min_coins = [amount + 1] * (amount + 1)
    min_coins[0] = 0
    for sum in range(1, amount + 1):
        for coin in coins:
            if sum >= coin:
                min_coins[sum] = min(min_coins[sum], min_coins[sum - coin] + 1)
    if min_coins[amount] == amount + 1:
        return -1
    return min_coins[amount]
