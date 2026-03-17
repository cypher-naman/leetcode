class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j = numbers.count-1

        while i <= j {
            if numbers[i] + numbers[j] == target {
                return [i+1,j+1]
            } else {
                let mid: Int = (i+j+1)/2
                let currentSum = numbers[i] + numbers[j]
                if target < currentSum {
                    j -= 1 
                } else {
                    i += 1
                }
            }
        }
        return [i+1, j+1]
    }
}