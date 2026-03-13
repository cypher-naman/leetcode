class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var strings = Array(repeating: "", count: numRows)
        var goingDown = false
        var outPutIndex = 0
        for (index, char) in s.enumerated() {
            strings[outPutIndex] += String(char)
            
            if outPutIndex == 0 || outPutIndex == numRows-1 {
                goingDown.toggle()
            }
            
            outPutIndex += goingDown ? 1 : -1
        }
        return strings.joined()
    }
}