class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var op = digits
        var currentLast = op.removeLast()
        var multiplier = 1
        if currentLast != 9 {
            op.append(currentLast+1)
        } else {
            while currentLast == 9 {
                if op.count > 0 {
                    currentLast = op.removeLast()
                } else {
                    break
                }
                multiplier += 1
            }


            if currentLast+1 == 10 {
                op.append(1)
            } else {
                op.append(currentLast+1)
                multiplier-=1
            }
            
            while multiplier > 0 {
                op.append(0)
                multiplier-=1
            }   
        }
             
        return op
    }
}