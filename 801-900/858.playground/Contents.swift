import UIKit

// https://leetcode.com/problems/mirror-reflection/
// 858 Mirror Reflection
class Solution {
    func mirrorReflection(_ p: Int, _ q: Int) -> Int {
                
        var m = 1, n = 1
        var temp = p
        while m*p != n*q {
            if n*q > temp {
                m += 1
                temp = temp + p
            }
            n += 1
        }
        print(n,m)

        if (m % 2 == 0 && n % 2 == 1) { return 0 }
        else if (m % 2 == 1 && n % 2 == 1) { return 1 }
        else if (m % 2 == 1 && n % 2 == 0) { return 2 }
        return -1
    }
}


var obj = Solution()
print(obj.mirrorReflection(3, 2))

print(obj.mirrorReflection(10, 3))
