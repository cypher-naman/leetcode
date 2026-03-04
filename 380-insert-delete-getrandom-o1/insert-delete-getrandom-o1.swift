
class RandomizedSet {
    var array = [Int]()
    var dict = [Int: Int]()
    init() {
        
    }
    
    func insert(_ val: Int) -> Bool {
        if dict[val] != nil { // found value in map
            return false
        } else {
            dict[val] = array.count
            array.append(val)
            return true
        }
    }
    
    func remove(_ val: Int) -> Bool {
        if let index = dict[val] {
            array.swapAt(index, array.count-1)
            dict[array[index]] = index
            array.removeLast()
            dict.removeValue(forKey: val)
            return true
        } else {
            return false
        }
    }
    
    func getRandom() -> Int {
        array[Int.random(in: 0..<array.count)]
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */