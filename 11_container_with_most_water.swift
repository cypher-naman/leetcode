class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count - 1
        var maxVol = 0

        while i < j {
            let h = min(height[i], height[j])
            let w = j - i
            maxVol = max(maxVol, h * w)

            if height[i] < height[j] {
                i += 1
            } else {
                j -= 1
            }
        }

        return maxVol
    }
}