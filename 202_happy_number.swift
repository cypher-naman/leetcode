class Solution {
    func isHappy(_ n: Int) -> Bool {
        var number = n
        var sumOfSquares = 0
        while number > 0 {
            let no = number % 10
            sumOfSquares += no * no
            number = number / 10

            
            if number == 0 && sumOfSquares == 1 {
                return true
            } else if number == 0 && sumOfSquares < 10 {
                if sumOfSquares == 7 {
                    return true
                } else {
                    return false
                }
                
            }
            
            if number == 0 {
                number = sumOfSquares
                sumOfSquares = 0
            }
            
        }
        return false
    }
}