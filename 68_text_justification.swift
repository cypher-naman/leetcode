class Solution {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {

        var result: [String] = []
        var i = 0

        while i < words.count {

            var j = i
            var lineLength = 0

            // 1️⃣ Collect words for current line
            while j < words.count &&
                lineLength + words[j].count + (j - i) <= maxWidth {
                lineLength += words[j].count
                j += 1
            }

            let numberOfWords = j - i
            var line = ""

            // 2️⃣ Last line OR single word → left align
            if j == words.count || numberOfWords == 1 {

                for k in i..<j {
                    if k > i { line += " " }
                    line += words[k]
                }

                // pad spaces at end
                line += String(repeating: " ",
                            count: maxWidth - line.count)

            } else {

                // 3️⃣ Fully justify
                let totalSpaces = maxWidth - lineLength
                let gaps = numberOfWords - 1

                let spacePerGap = totalSpaces / gaps
                let extraSpaces = totalSpaces % gaps

                for k in i..<j {

                    line += words[k]

                    if k < j - 1 {
                        let spaces =
                            spacePerGap + (k - i < extraSpaces ? 1 : 0)
                        line += String(repeating: " ", count: spaces)
                    }
                }
            }

            result.append(line)
            i = j
        }

        return result
    }
}