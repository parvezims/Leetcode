// 916. Word Subsets
// https://leetcode.com/problems/word-subsets/

class Solution {
    func wordSubsets(_ words1: [String], _ words2: [String]) -> [String] {
           
        
        var result = [String]()
        var freq = [Character : Int] ()
        
        for item in words2 {
            
            let dict = stringToDict(item)
            for (letter, frequency) in dict {
                
                if let value = freq[letter] {
                    freq[letter] = max(frequency,value)
                }
                else {
                    freq[letter] = frequency
                }
            }
        }
        
        var list2 = [[Character:Int]]()
        for item in words1 {
            list2.append(stringToDict(item))
        }
        
        for item1 in words1 {
            
            var found = true
            let wordFreq = stringToDict(item1)
            
            for (char,frequency) in freq {
                
                if let value = wordFreq[char] {
                    
                    if value < frequency {
                        found = false
                        break
                    }
                }
                else {
                    found = false
                    break
                }
            }
            if found  {
                result.append(item1)
            }
        }
        return result
    }
    
    func stringToDict(_ s:String) -> [Character : Int] {
        
        var result = [Character:Int] ()
        for i in s {
            result[i, default: 0] += 1
        }
        return result
    }
}



let obj = Solution()
//print(obj.stringToDict("parvaer"))
print(obj.wordSubsets(["amazon","apple","facebook","google","leetcode"],["l","e"]))


//Input: words1 = ["amazon","apple","facebook","google","leetcode"], words2 = ["l","e"]
//Output: ["apple","google","leetcode"]
 

