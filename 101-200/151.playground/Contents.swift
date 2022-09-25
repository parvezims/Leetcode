
// https://leetcode.com/problems/reverse-words-in-a-string/


import Foundation
 
class Solution {
    func reverseWords(_ s: String) -> String {
       
        var result : [Character] = []
        let trim = s.trimmingCharacters(in: .whitespaces)
        let charList = Array(trim)
        var temp : [Character] = []
        for val in charList {
            
            if val == " " {
                if result.count != 0 && result[0] != " "{
                    result.insert(" ", at: 0)
                }
                result.insert(contentsOf:temp, at: 0)
                temp.removeAll()
            }
            else {
                temp.append(val)
            }
        }
       if result.count != 0 && result[0] != " "{
                    result.insert(" ", at: 0)
        }
        result.insert(contentsOf:temp, at: 0)
       return String(result)
    }
}


let obj = Solution()
print(obj.reverseWords("   Let's         take LeetCode contest   "))
