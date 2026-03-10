class Solution {
    func reverseWords(_ s: String) -> String {
        var words = [String]()
        var str = ""
        for char in s {
            if char == " " && !str.isEmpty {
                words.append(str)
                str = ""
            } else if char != " " {
                str += String(char)
            }
        }
        if !str.isEmpty || str == " " {
            words.append(str)
        }
        str = ""
        for (index, word) in words.reversed().enumerated() {
            str+=word
            if index < words.count-1 {
                str+=" "
            }
        }
        return str
    }
}