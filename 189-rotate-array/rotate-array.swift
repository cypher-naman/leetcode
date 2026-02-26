class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        guard n > 1 else { return }
        
        let k = k % n
        guard k > 0 else { return }

        nums.reverse()
        nums[0..<k].reverse()
        nums[k..<n].reverse()
    }
}