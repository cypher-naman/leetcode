class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        if nums.count < 1 {
            return []
        }
        var i = 0
        var expectedNo = nums[0]
        var startingNo = nums[0]
        var currentSetCount = 0
        var op = [String]()
        
        while i < nums.count {
            if expectedNo == nums[i] {
                currentSetCount+=1
                expectedNo+=1
            } else {
                if currentSetCount < 2 {
                    op.append("\(startingNo)")
                } else {
                    op.append("\(startingNo)->\(startingNo+currentSetCount-1)")
                }
                startingNo = nums[i]
                expectedNo = startingNo+1
                currentSetCount = 1
            }
            i+=1
        }
        if currentSetCount < 2 {
            op.append("\(startingNo)")
        } else {
            op.append("\(startingNo)->\(startingNo+currentSetCount-1)")
        }
        return op
    }
}