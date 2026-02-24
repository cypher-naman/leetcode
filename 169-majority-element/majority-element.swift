class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var frequencyDict: [Int: Int] = [:]
        let majority = nums.count/2
        for num in nums {
            frequencyDict[num, default: 0] += 1
            if frequencyDict[num]! > majority {
             return num
            }
        }
        return nums[0]
    }
}