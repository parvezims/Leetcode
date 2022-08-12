

// URL: https://leetcode.com/problems/string-to-integer-atoi/


import Foundation


class Solution {
    func myAtoi(_ s: String) -> Int {
       
       var ans = 0
       let list = Array(s)
       var neg = false
       var count = 0
       if (s == "" ) {
           return 0
       }
       
       for c in list {
           if (c == " ") {
            count += 1
           }
           else {
               break
           }
       }
       
      if (count == list.count) {
          return 0
      }
       if list[count] == "+" {
           count += 1
       }
       else if (list[count] == "-") {
           count += 1
           neg = true
       }
       
       
       for i in count..<list.count {
         
           let c = list[i]
           if c.isASCII && c.isNumber {
           
                ans = ans*10
                if let number = Int(String(c)) {
                
                   ans += number
                   if (ans  >= 2147483647 && neg == false) {
                        ans = 2147483647
                    }
                    else if  (ans  >= 2147483648 || ans < -2147483648){
                        ans =  -2147483648
                    }
                }
           }
           else {
               break
           }
       }
       if (ans !=  -2147483648)  {
        ans = neg ? ans * -1 : ans
       }
       
       return ans
    }
}

 
//let solution = Solution()
//print(solution.myAtoi(""))
//print(solution.myAtoi(" "))
//print(solution.myAtoi("  "))

// print(solution.myAtoi("     -42"))
// print(solution.myAtoi("words and 987"))
// print(solution.myAtoi("-91283472332"))
// print(solution.myAtoi("91283472332"))
// print(solution.myAtoi("4192 words and"))
// print(solution.myAtoi("+1"))
// print(solution.myAtoi("+-1"))
// print(solution.myAtoi("00000-42a1234"))
// print(solution.myAtoi("0000042a1234"))
// print(solution.myAtoi("    0000000000012345678"))
// print(solution.myAtoi("-000000000000001"))




