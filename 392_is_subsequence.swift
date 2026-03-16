class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let sChar = Array(s)
        let tChar = Array(t)

        var i = 0
        var j = 0

        while i < sChar.count && j < tChar.count {
            if sChar[i] == tChar[j] {
                i += 1
            }
            j += 1
        }

        return i == sChar.count
    }
}