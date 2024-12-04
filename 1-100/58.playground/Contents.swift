

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
       
        var length = 0
        
        var rev = s.reversed()
        for ch in rev {
        
            let val = String(ch)
            
            if val == " " && length == 0 {
                
                continue
            }
            else if val != " "{

                length += 1
            }
            else if val == " " && length != 0 {
                break
            }
        }
        return length
    }
}



let obj = Solution()
print(obj.lengthOfLastWord("hello World"))
print(obj.lengthOfLastWord("   fly me   to   the moon  "))
print(obj.lengthOfLastWord("luffy is still joyboy"))




