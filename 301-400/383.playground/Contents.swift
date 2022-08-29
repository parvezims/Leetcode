import UIKit

    // https://leetcode.com/problems/ransom-note/
 // 383. Ransom Note


class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
     
        var result = true
        let ransomArray = Array(ransomNote)
        let magazineArray = Array(magazine)
        var magazineFreq = [Character : Int] ()
        
        for item in magazineArray {
            if let value = magazineFreq[item] {
                magazineFreq.updateValue(value+1, forKey: item)
            }
            else {
                magazineFreq.updateValue(1, forKey: item)
            }
        }
        
        for item in ransomArray {
            if let value = magazineFreq[item] {
                
                if value < 1 {
                    result = false
                    break
                }
                magazineFreq.updateValue(value-1, forKey: item)
            }
            else {
                result = false
                break
            }
        }
        return result
    }
}


let obj = Solution()
//print(obj.canConstruct("bg", "efjbdfbdgfjhhaiigfhbaejahgfbbgbjagbddfgdiaigdadhcfcj"))
print(obj.canConstruct("chejaccdae", "geceeibccchjejhdd"))



