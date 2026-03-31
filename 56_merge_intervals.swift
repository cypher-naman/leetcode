class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0] })
        var currentStarting = sortedIntervals[0][0]
        var currentEnding = sortedIntervals[0][1]
        var op = [[Int]]()
        for (i, array) in sortedIntervals.enumerated() {
            let startingIndex = array[0]
            let endingIndex = array[1]
            
            if currentEnding >= startingIndex {
                currentEnding = max(endingIndex, currentEnding)
                if startingIndex <= currentStarting {
                    currentStarting = startingIndex
                }
            } else {
                op.append([currentStarting, currentEnding])
                currentStarting = sortedIntervals[i][0]
                currentEnding = sortedIntervals[i][1]
            }
        }
        op.append([currentStarting, currentEnding])
        return op
    }
}