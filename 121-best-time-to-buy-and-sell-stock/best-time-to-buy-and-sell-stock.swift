class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = prices[0]
        var sell = prices[0]
        var i = 0
        var j = 0
        var profit = 0
        while j < prices.count {
            if prices[j] < buy {
                buy = prices[j]
                sell = prices[j]
            } else if prices[j] > sell {
                sell = prices[j]
                let currentProfit = sell-buy
                profit = max(profit, currentProfit)
            }
            j+=1
        }
        return profit
    }
}