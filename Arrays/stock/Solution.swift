
// Problem code
func maxProfit(_ prices: [Int]) -> Int {
    if prices.count == 0 {
        return 0
    }
    
    var minPrice = prices[0]
    var profit = 0
    
    for price in prices {
        profit = max(profit, price - minPrice)
        minPrice = min(minPrice, price)
    }
    return profit
}

// Setup
let a = [7,1,5,3,6,4]
let profit = maxProfit(a)
print("Max profit for array \(a) is \(profit)")
