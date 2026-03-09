class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var charArray = Array<Character>(s.reversed())
        if charArray.count == 1 && charArray[0] == " " {
            return 0
        } else if charArray.count == 1 && charArray[0] != " " {
            return 1
        }
        var i = 0
        while charArray[i] == " " {
            i+=1
        }

        var lastWordCount = 0

        while i < charArray.count {
            if charArray[i] != " " {
                lastWordCount+=1
                i+=1
            } else {
                break
            }
        }

        return lastWordCount
    }
}