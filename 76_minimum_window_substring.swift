class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        
        // Edge case
        if t.count > s.count { return "" }
        
        let chars = Array(s)
        
        // Step 1: Build frequency map of target string
        var requiredFreq = [Character: Int]()
        for char in t {
            requiredFreq[char, default: 0] += 1
        }
        
        // Step 2: Sliding window variables
        var windowFreq = [Character: Int]()
        
        var left = 0
        var right = 0
        
        // Number of unique characters that must match
        let totalUniqueRequired = requiredFreq.count
        
        // Number of characters currently satisfying required frequency
        var matchedUniqueChars = 0
        
        // Track best (minimum) window
        var minWindowLength = Int.max
        var minWindowStart = 0
        
        // Step 3: Expand window using right pointer
        while right < chars.count {
            
            let currentChar = chars[right]
            windowFreq[currentChar, default: 0] += 1
            
            // If this char now satisfies required frequency
            if let requiredCount = requiredFreq[currentChar],
            windowFreq[currentChar] == requiredCount {
                matchedUniqueChars += 1
            }
            
            // Step 4: Try shrinking window from left
            while matchedUniqueChars == totalUniqueRequired {
                
                // Update minimum window
                let currentWindowLength = right - left + 1
                if currentWindowLength < minWindowLength {
                    minWindowLength = currentWindowLength
                    minWindowStart = left
                }
                
                // Remove leftmost character
                let leftChar = chars[left]
                windowFreq[leftChar]! -= 1
                
                // If removing breaks requirement → decrease matched count
                if let requiredCount = requiredFreq[leftChar],
                windowFreq[leftChar]! < requiredCount {
                    matchedUniqueChars -= 1
                }
                
                left += 1
            }
            
            right += 1
        }
        
        // Step 5: Return result
        if minWindowLength == Int.max {
            return ""
        }
        
        return String(chars[minWindowStart..<minWindowStart + minWindowLength])
    }
}