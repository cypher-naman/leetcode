class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var sDict = [Character: Int]()
        var tDict = [Character: Int]()

        for char in s {
            sDict[char, default: 0] += 1
        }

        for char in t {
            tDict[char, default: 0] += 1
        }

        return sDict == tDict
    }
}