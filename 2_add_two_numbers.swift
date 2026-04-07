/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var firstNode: ListNode? = l1
        var secondNode: ListNode? = l2
        let op: ListNode? = ListNode(0)
        var outputNode: ListNode? = op
        var carry = 0
        while firstNode != nil || secondNode != nil {
            let sum: Int =  (firstNode?.val ?? 0) + (secondNode?.val ?? 0) + carry
            if sum > 9 {
                carry = sum/10
                outputNode?.val = sum%10
            } else {
                carry = 0
                outputNode?.val = sum
            }
            if firstNode != nil {
                firstNode = firstNode?.next
            }
            if secondNode != nil {
                secondNode = secondNode?.next
            }
            if carry == 0 && secondNode == nil && firstNode == nil {
                return op
            } else {
                outputNode?.next = ListNode(1)
            }
            outputNode = outputNode?.next
        }    
        return op    
    }
}