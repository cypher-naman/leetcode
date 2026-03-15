class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var op = Array(s.lowercased().filter { $0.isLetter || $0.isNumber})
        var i = 0
        var j = op.count-1
        while i < j {
            if op[i] == op[j] {
                i+=1
                j-=1
            } else {
                return false
            }
        }
        return true
    }
}