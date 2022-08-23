

// https://leetcode.com/problems/power-of-three/
// 326. Power of Three

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
              
        if n == 0 { return false }
        else {
            return (n == 1 ) || (n % 3 == 0) && isPowerOfThree(n/3)
        
         }
    }
}
