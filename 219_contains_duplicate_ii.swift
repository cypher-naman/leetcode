class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var i = 0
        var dict = [Int: Int]()

        while i < nums.count {
            if let index = dict[nums[i]] {
                let distance = abs(i-index)
                if distance <= k {
                    return true
                }
            }
            dict[nums[i]] = i
            i+=1
        }
        return false
    }
}