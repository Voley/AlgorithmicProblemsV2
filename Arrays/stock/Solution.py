
# Problem code
def maxProfit(prices):
    if not prices:
        return 0

    minPrice = prices[0]
    profit = 0

    for price in prices:
        profit = max(profit, price - minPrice)
        minPrice = min(minPrice, price)

    return profit

# Setup
a = [7,1,5,3,6,4]
profit = maxProfit(a)
print("Max profit for array " + str(a) + " is " + str(profit))
