class Solution {
// | Approach                  | Time       | Space |
// | ------------------------- | ---------- | ----- |
// | Brute Force (nested loop) | O(N²)      | O(1)  |
// | Sorting + Two Pointers    | O(N log N) | O(1)  |
// | HashMap (below approach)  | O(N)       | O(N)  |

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var exsistingPair: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            let currentTarget = target - value
            if let otherNumberIndex = exsistingPair[currentTarget] {
                return [index, otherNumberIndex]
            }
            exsistingPair[value] = index
        }
        return []
    }
}