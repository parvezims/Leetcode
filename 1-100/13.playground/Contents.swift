

class Solution {
    
    
    func romanToInt(_ s: String) -> Int {

        var intNumber = 0
        var oldVal = 0
        let dict = ["I":1 , "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]        
        var rev = s.reversed()
        for ch in rev {
            
            if let val = dict[String(ch)] {
                
                if oldVal > val && oldVal != 0{
                    intNumber -= val
                }
                else if oldVal < val && oldVal != 0{
                    
                    intNumber += val
                    oldVal = val
                }
                else {
                    intNumber += val
                    oldVal = val
                }
            }
        }
        return intNumber
    }
}


let obj = Solution()
print(obj.romanToInt("XLVIII"))


