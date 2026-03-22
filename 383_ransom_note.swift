class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineDict = [Character: Int]()

        for (_, char) in magazine.enumerated() {
            magazineDict[char, default: 0] += 1
        }

        for (_, char) in ransomNote.enumerated() { 
            if let count = magazineDict[char], count > 0 {
                magazineDict[char]! -= 1
            } else {
                return false
            }
        }
        return true
    }
}