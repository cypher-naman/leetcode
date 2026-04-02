class Solution {
    private var items: [Character] = []
    func push(_ item: Character) { items.append(item) }
    func pop() -> Character? { return items.popLast() }

    func isValid(_ s: String) -> Bool {
        let chars = Array(s)
        for char in chars {
            if char == "(" || char == "{" || char == "[" {
                push(char)
            } else if char == ")" {
                if let element = pop() {
                    if element != "(" {
                        return false
                    }
                } else {
                    return false
                }
            } else if char == "]" {
                if let element = pop() {
                    if element != "[" {
                        return false
                    }
                } else {
                    return false
                }
            } else if char == "}" {
                if let element = pop() {
                    if element != "{" {
                        return false
                    }
                } else {
                    return false
                }
            }
        }
        return items.isEmpty ? true : false
    }
}