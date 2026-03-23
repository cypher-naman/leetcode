class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var charDict = [Character: Character]()
        let sArray = Array(s)
        let tArray = Array(t)

        for (i, char) in s.enumerated() {
            if let exsistingChar = charDict[char] {
                if exsistingChar != tArray[i] {
                    return false
                }
            } else {
                charDict[char] = tArray[i]
            }
            
        }
        
        for (i, char) in t.enumerated() {
            if char != charDict[sArray[i]] {
                return false
            }
        }
        charDict = [:]
        
        for (i, char) in t.enumerated() {
            if let exsistingChar = charDict[char] {
                if exsistingChar != sArray[i] {
                    return false
                }
            } else {
                charDict[char] = sArray[i]
            }
            
        }
        
        for (i, char) in s.enumerated() {
            if char != charDict[tArray[i]] {
                return false
            }
        }
        return true
    }
}