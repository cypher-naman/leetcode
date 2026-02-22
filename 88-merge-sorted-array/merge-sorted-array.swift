class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m-1 //space complexity 3 * O(1) = O(1)
        var j = n-1
        var k = n+m-1

        while j >= 0 { // time complexity = i+j = O(m+n)
            if i >= 0, nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i-=1
            } else {
                nums1[k] = nums2[j]
                j-=1
            }
            k-=1
        }
    }
}