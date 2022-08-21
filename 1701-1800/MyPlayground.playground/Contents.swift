
// https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string/
// 1758


class Solution {
    func minOperations(_ s: String) -> Int {
       
        var result = 0
        var array = Array(s)
        let n = array.count
        for i in 1..<array.count {
            if array[i-1] == array[i] {
                array[i-1] == "1" ? (array[i] = "0") : (array[i] = "1")
                result += 1
            }
        }
        return min(result,n-result)
    }
}

let obj = Solution()
print(obj.minOperations("0100"))
print(obj.minOperations("1111"))
print(obj.minOperations("10"))
print(obj.minOperations("10010100"))

//10010100
//01010101
//10101010
