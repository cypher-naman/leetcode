class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var currentSum = 0
        var i = 0
        var result = Int.max

        for j in 0..<nums.count {

            currentSum += nums[j]

            while currentSum >= target {
                result = min(result, j - i + 1)
                currentSum -= nums[i]
                i += 1
            }
        }

        return result == Int.max ? 0 : result
    }
}