class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var longest = 0
        var localCount = 0
        if nums.isEmpty {
            return 0
        } else if nums.count == 1 {
            return 1
        }
        

        let sorted = Array(Set(nums)).sorted()
        var expectedNo = sorted[0]
        for item in sorted {
            if expectedNo == item {
                localCount+=1
                expectedNo+=1
                longest = max(longest, localCount)
            } else {
                localCount = 1
                expectedNo = item+1
            }
        }
        
        return longest
    }
}