class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0 // space complexity -> O(1) + O(1) = O(1)
        var j = nums.count

        while i < j { // time complexity -> O(N)
            if nums[i] == val { // override this with last element and shink size 
                nums[i] = nums[j-1]
                j-=1
            } else {
                i+=1
            }
        }
        return j
    }
}