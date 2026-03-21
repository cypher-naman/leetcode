class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {

    let chars = Array(s)

    var maxCount = 0
    var currentSet = Set<Character>()

    var i = 0
    var j = 0

    while j < chars.count {

        if !currentSet.contains(chars[j]) {

            currentSet.insert(chars[j])
            maxCount = max(maxCount, j - i + 1)
            j += 1

        } else {

            currentSet.remove(chars[i])
            i += 1
        }
    }

    return maxCount
}
    // func lengthOfLongestSubstring(_ s: String) -> Int {
    //     var dict = [Character: Int]()
    //     var i = 0
    //     var maxLen = 0

    //     let chars = Array(s)

    //     for j in 0..<chars.count {

    //         if let prev = dict[chars[j]] {
    //             i = max(i, prev + 1)
    //         }

    //         dict[chars[j]] = j
    //         maxLen = max(maxLen, j - i + 1)
    //     }

    //     return maxLen
    // }
}