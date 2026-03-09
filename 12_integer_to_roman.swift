class Solution {
    func intToRoman(_ num: Int) -> String {
        var n = num
        var s = ""
        while n > 0 {
            if n >= 1000 {
                n-=1000
                s.append("M")
            } else if n >= 900 {
                n-=900
                s.append("CM")
            } else if n >= 500 {
                n-=500
                s.append("D")
            } else if n >= 400 {
                n-=400
                s.append("CD")
            } else if n >= 100 {
                n-=100
                s.append("C")
            } else if n>=90 {
                n-=90
                s.append("XC")
            } else if n >= 50 {
                n-=50
                s.append("L")
            } else if n >= 40 {
                n -= 40 
                s.append("XL")
            } else if n >= 10 {
                n-=10
                s.append("X")
            } else if n>=9 {
                n-=9
                s.append("IX")
            } else if n>=5 {
                n-=5
                s.append("V")
            } else if n>=4 {
                n-=4
                s.append("IV")
            } else if n>=1 {
                n-=1
                s.append("I")
            }
        }
        return s
    }
}