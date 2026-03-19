class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        let nums = nums.sorted()
        var result = [[Int]]()

        for i in 0..<nums.count {

            if i > 0 && nums[i] == nums[i-1] {
                continue
            }

            twoSum(nums, i, &result)
        }

        return result
    }

    func twoSum(_ nums: [Int], _ i: Int, _ result: inout [[Int]]) {

        var left = i + 1
        var right = nums.count - 1
        let target = -nums[i]

        while left < right {

            let sum = nums[left] + nums[right]

            if sum == target {

                result.append([
                    nums[i],
                    nums[left],
                    nums[right]
                ])

                left += 1
                right -= 1

                while left < right && nums[left] == nums[left-1] {
                    left += 1
                }

                while left < right && nums[right] == nums[right+1] {
                    right -= 1
                }

            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }
    }
}