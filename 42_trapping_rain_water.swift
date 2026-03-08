class Solution {
    func trap(_ height: [Int]) -> Int {
        let heights = height.count
        var maxRightHeights = Array(repeating: 0, count: heights)
        var maxValue = 0
        for index in stride(from: heights-1, through: 0, by: -1) {
             maxValue = max(height[index], maxValue)
             maxRightHeights[index] = maxValue
        }
        maxValue = 0
        var waterTrapped = 0
        for index in 0..<heights {
            maxValue = max(height[index], maxValue)
            let minFromMax = min(maxValue, maxRightHeights[index])
            waterTrapped += minFromMax - height[index]
        }
        return waterTrapped
    }
}