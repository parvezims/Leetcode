
class Solution {
    
    func majorityElement(_ nums: [Int]) -> Int {
        
        var dict:[Int:Int] = [:]
        var frequency = 0
        var number = nums[0]
        
        for i in 0..<nums.count {
            
            if let value = dict[nums[i]] {
                
                if frequency <= value {
                    frequency = value + 1
                    number = nums[i]
                }
                dict[nums[i]] = value + 1
            }
            else {
                dict[nums[i]] = 1
            }
        }
        return number
    }
}

let obj = Solution()
print(obj.majorityElement([8,8,7,7,7]))

