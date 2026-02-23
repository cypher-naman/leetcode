class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var writeIndex = 0 // space complexity O(1) + O(1) = O(1)
        var readIndex = 1

        while readIndex < nums.count { // time complexity = O(N)
            if nums[readIndex] != nums[writeIndex] { // non - duplicate 
                writeIndex+=1
                nums[writeIndex] = nums[readIndex]
            }
            readIndex += 1
        }
        return writeIndex+1
    }
}