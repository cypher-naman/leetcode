class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var i = 0 // buy 
        var j = 1 // sell

        while j < prices.count {
            if prices[i] < prices[j] {
                let profit = prices[j] - prices[i]
                maxProfit = max(profit, maxProfit)
            } else {
                i = j
            }
            j+=1
        }

        return maxProfit
    }
}