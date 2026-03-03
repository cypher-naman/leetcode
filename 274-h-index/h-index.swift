class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        let sortedCitations = citations.sorted()
        var arrayIndex = citations.count - 1
        var citationCount = 0
        while arrayIndex >= 0 {
            if citationCount >= sortedCitations[arrayIndex]  {
                return citationCount 
            }
            citationCount += 1
            arrayIndex -= 1
        }
        return citationCount
    }
}