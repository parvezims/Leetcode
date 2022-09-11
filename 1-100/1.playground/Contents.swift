
class Solution {
    
    func twoSumOld(_ nums: [Int], _ target: Int) -> [Int] {
        
       for i in 0...(nums.count-1) {
            for j in i+1...(nums.count-1) {
                if (nums[j] + nums[i] == target) {
                   return [i,j]
                }
            }
        }
        return []
        
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dict:[Int:Int] = [:]
        for (i,val) in nums.enumerated() {
            if let value = dict[target-val] {
                return [value, i]
            }
            else {
                dict[val] = i
            }
        }
        return []
    }
}

let obj = Solution()
print(obj.twoSum([3,3,2,6,1,2,3,4,5,6,7,8,9,-9,3],6))

