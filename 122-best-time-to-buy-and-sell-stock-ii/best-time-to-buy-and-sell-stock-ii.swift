class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var totalProfit = 0
        var i = 0
        var j = 1
        while j < prices.count {
            if prices[j] > prices[i] {
                if j != prices.count-1 {
                    // use last one
                    if prices[j+1] > prices[j] {
                        j+=1
                        continue
                    }
                }
                let profit = prices[j] - prices[i]
                totalProfit += profit
                i = j+1
            } else {
                i = j
            }
            j+=1
        }
        return totalProfit
    }
}