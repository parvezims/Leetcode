// https://leetcode.com/problems/minimum-sum-of-squared-difference/

// In progress
// 2333
class Solution {
    func minSumSquareDiff(_ nums1: [Int], _ nums2: [Int], _ k1: Int, _ k2: Int) -> Int {
        
        
        var result = 0
        var diff = [Int]()
        var small = nums1[0] - nums2[0]
        var big = nums1[0] - nums2[0]
        for i in 0..<nums1.count {
            
            let sum = nums1[i]-nums2[i]
            if sum > big { big = sum }
            diff.append(abs(sum))
        }
        
        print(small,big)
        print(diff)
        
        
        return result
    }
}


let obj = Solution()
print(obj.minSumSquareDiff([1,4,10,12], [5,8,6,9], 1, 1))
