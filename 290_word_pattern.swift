class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        var strDict = [Character: String]()
        var charDict = [String: Character]()
        let arrayOfString = s.components(separatedBy: " ")
        let arrayOfPattern = Array(pattern)
        if arrayOfPattern.count != arrayOfString.count {
            return false
        }
        for (index, str) in arrayOfString.enumerated() {
            if let string = strDict[arrayOfPattern[index]] {
                if string != str {
                    return false
                }
            } else {
                strDict[arrayOfPattern[index]] = str
            }
        }

        for (index, char) in arrayOfPattern.enumerated() {
            if let savedChar = charDict[arrayOfString[index]] {
                if char != savedChar {
                    return false
                }
            } else {
                charDict[arrayOfString[index]] = char
            }
        }
        

        return true
    }
}