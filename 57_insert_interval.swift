class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {

        var result: [[Int]] = []
        var i = 0
        let n = intervals.count

        var newStart = newInterval[0]
        var newEnd = newInterval[1]

        // Add all intervals before overlap
        while i < n && intervals[i][1] < newStart {
            result.append(intervals[i])
            i += 1
        }

        // Merge overlapping intervals
        while i < n && intervals[i][0] <= newEnd {
            newStart = min(newStart, intervals[i][0])
            newEnd = max(newEnd, intervals[i][1])
            i += 1
        }

        // add merged interval
        result.append([newStart, newEnd])

        // Add remaining intervals
        while i < n {
            result.append(intervals[i])
            i += 1
        }

        return result
    }
}