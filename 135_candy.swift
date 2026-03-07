class Solution {
    func candy(_ ratings: [Int]) -> Int {
        if ratings.count == 1 {
            return 1
        }
        var candyCount = Array(repeating: 1, count: ratings.count)
        for i in 1..<ratings.count {
            if ratings[i] > ratings[i-1] {
                candyCount[i] = candyCount[i-1] + 1
            }
        }

        for j in stride(from: ratings.count-2, through: 0, by: -1) {
            if ratings[j] > ratings[j+1] {
                candyCount[j] = max(candyCount[j+1] + 1, candyCount[j])
            }
        }

        return candyCount.reduce(0,+)
    }
}