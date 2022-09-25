
// https://leetcode.com/problems/reverse-words-in-a-string-iii/


class Solution {
    func reverseWords(_ s: String) -> String {
       
        var result : [Character] = []
        let charList = Array(s)
        var temp : [Character] = []
        for val in charList {
            
            if val == " " {
                if result.count != 0 {
                    result.append(" ")
                }
                result.append(contentsOf: temp)
                temp.removeAll()
            }
            else {
                temp.insert(val, at:0)
            }
        }
        if result.count != 0 {
            result.append(" ")
        }
        result.append(contentsOf: temp)
       return String(result)
    }
}

let obj = Solution()
print(obj.reverseWords("Let's take LeetCode contest"))
