class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var current = 0
        var count = 0

        for num in nums {
            if count == 0 {
                current = num
            }
            count += num == current ? 1 : -1 
        }
        return current
    }
}