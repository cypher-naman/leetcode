class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var op = -1
        var j = 0
        let needle = Array(needle)
        let haystack = Array(haystack)
        let needleCount = needle.count
        var i = 0
        while i < haystack.count {
            
            if haystack[i] == needle[j] {
                op = i
                j+=1
            } else {
                op = -1
                if i > 0 && j >= 0 && j <= i{
                    i-=j
                }
                j = 0
            }
            
            if j == needleCount {
                return op-(needleCount-1)
            }
            i+=1
        }
        return -1
    }
}