
// https://leetcode.com/problems/number-of-1-bits/
// 191. Number of 1 Bits


class Solution {
    func hammingWeight(_ n: Int) -> Int {
       
        var count = 0
        var expo = 1
        while n >= expo {
            
            if n&expo > 0 {
                count += 1
            }
            expo *= 2
        }
        return count
    }
}




let obj = Solution()
print(obj.hammingWeight(128))
