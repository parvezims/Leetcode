

// https://leetcode.com/problems/power-of-four/
// 342. Power of Four

class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        
        var result = true
        if n == 1 {
            return true
        }
        else if n < 1 {
            return false
        }
        var value = n
        while value > 1 {
            
            if value % 4 == 0 {
                value = value / 4
            }
            else {
                result = false
                break
            }
        }
        return result
    }
}


let obj = Solution()
print(obj.isPowerOfFour(16))
print(obj.isPowerOfFour(5))
print(obj.isPowerOfFour(1))
print(obj.isPowerOfFour(-16))
print(obj.isPowerOfFour(-64))

