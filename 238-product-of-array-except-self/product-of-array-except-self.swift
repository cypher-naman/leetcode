class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var product = 1
        var doesContainZero = false
        var noOfZeroes = 0
        for num in nums { // O(N)
            if num != 0 {
                product *= num
            } else {
                noOfZeroes += 1
                doesContainZero = true
            }
        }

        var outputArray = [Int]() // space  O(N)

        for num in nums { // O(N)
            if num == 0 {
                if doesContainZero && noOfZeroes > 1 {
                    outputArray.append(0)
                } else {
                    outputArray.append(product)
                }
                
            } else if doesContainZero {
                 outputArray.append(0)
            } else {
                let divided = (product / num)
                outputArray.append(divided)
            }
        }
        return outputArray // total time complexity = 2 * O(N), space = O(N)
    }
}