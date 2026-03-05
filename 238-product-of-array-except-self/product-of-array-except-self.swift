class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var resultArray = Array(repeating: 1, count: nums.count) // O(N)
        var prefixMultiplication = 1
        var suffixMultiplication = 1

        for index in 0..<nums.count { // O(N)
            resultArray[index] *= prefixMultiplication
            prefixMultiplication *= nums[index]
        }

        for index in stride(from: nums.count-1, through: 0, by: -1) { // O(N)
            resultArray[index] *= suffixMultiplication
            suffixMultiplication *= nums[index]
        }
        return resultArray // time - // 2 * O(N, space - // O(N)
    }
}