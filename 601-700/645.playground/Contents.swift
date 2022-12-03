import UIKit

// 645. Set Mismatch
// https://leetcode.com/problems/set-mismatch/

class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        
        var missingNumber = -1
        var duplicatenumber = -1
        var dict: [Int:Int] = [:]
        for i in 0..<nums.count {
            dict[nums[i], default:0] += 1
        }
        
        for i in 0..<nums.count {
            if let num = dict[i+1] {
                if num == 2 {
                   duplicatenumber = i+1
                }
            }
            else {
                missingNumber = i + 1
            }
        }
        return [duplicatenumber,missingNumber]
    }
}
