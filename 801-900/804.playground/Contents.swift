import UIKit

var greeting = "Hello, playground"


class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        
        var result = 0
        
        let charArr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        let symbolArr = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        
        var dict = [String:String]()
        for i in 0..<charArr.count {
            dict.updateValue(symbolArr[i], forKey: charArr[i])
        }
        var strArr = [String]()
        for item in words {
            
            let itemArr = Array(item)
            var str = String()
            for char in itemArr {
                if let value = dict[String(char)] {
                    str.append(value)
                }
            }
            if !strArr.contains(str) {
                result += 1
                strArr.append(str)
            }
        }
        return result
    }
}



let obj = Solution()
print(obj.uniqueMorseRepresentations(["gin","zen","gig","msg"]))
