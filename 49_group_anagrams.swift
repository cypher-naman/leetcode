class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        var opDict = [String: [String]]()

        for s in strs {
            let sortedKey = String(s.sorted())
            opDict[sortedKey, default: []].append(s)
        }
        var op = [[String]]()
        for items in opDict {
            op.append(items.value)
        }
        return op
    }
}