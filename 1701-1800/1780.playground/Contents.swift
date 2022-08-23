import UIKit

// https://leetcode.com/problems/check-if-number-is-a-sum-of-powers-of-three/
//1780. Check if Number is a Sum of Powers of Three


class Solution {
    func checkPowersOfThree(_ n: Int) -> Bool {
                
        var number = n
        var sum = 0
        var maxValue = 39.0
        while number > 0  {
            let value = Int(pow(3.0,maxValue))
            if value <= number {
                number -= value
                sum += value
            }
            if maxValue == 0 {
                break
            }
            maxValue -= 1
        }
        return sum == n
    }
}


let obj = Solution()

print(obj.checkPowersOfThree(12))
print(obj.checkPowersOfThree(91))
print(obj.checkPowersOfThree(21))
