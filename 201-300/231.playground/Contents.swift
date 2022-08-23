

// https://leetcode.com/problems/power-of-two/
// 231. Power of Two

class Solution {
    func isPowerOfTwo_While(_ n: Int) -> Bool {
        
        var result = true
        if n == 1 {
            return true
        }
        else if n < 1 {
            return false
        }
        var value = n
        while value > 1 {
            
            if value % 2 == 0 {
                value = value / 2
            }
            else {
                result = false
                break
            }
        }
        return result
    }
    
    
    func isPowerOfTwo_Recursive(_ n: Int) -> Bool {
        
        if n == 0 { return false }
        else {
            return (n == 1 ) || (n % 2 == 0) && isPowerOfTwo(n/2)
        }
    }
    
    
    // using bitwise
    func isPowerOfTwo(_ n: Int) -> Bool {
        
        if n <= 0 { return false }
        else {
            return !(((n&(n-1)) != 0))
        }
    }
}


let obj = Solution()
print(obj.isPowerOfTwo(2))
print(obj.isPowerOfTwo(16))
print(obj.isPowerOfTwo(3))


