class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 3 {
            return nums.count
        }
        var writeIndex = 2
        for readIndex in 2..<nums.count {
            if nums[readIndex] != nums[writeIndex-2] {
                nums[writeIndex] = nums[readIndex]
                writeIndex+=1
            }
        }
        return writeIndex
    }
}