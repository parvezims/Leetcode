import UIKit

class Solution {
    
    func isPalindrome(_ s: String) -> Bool {
        
        var isPalindrome = true
        let newstr = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
        let array = Array(newstr)
        var endIndex = array.count-1
        for i in 0...array.count/2 {
            
            if array[i] == array[endIndex] {
                endIndex -= 1
            }
            else {
                isPalindrome = false
                break
            }
        }
        return isPalindrome
    }
}

let obj = Solution()

print(obj.isPalindrome("A man, a plan, a canal: Panama"))
