import UIKit


class Solution {
    func numberOfWeakCharacters(_ properties: [[Int]]) -> Int {
       
        var result = 0
        let newList = properties.sorted {
            $0[0] < $1[0]
        }
        
        var big = newList[0]
        
        for i in 1..<newList.count - 1 {
            let item  = newList[i]
            if item[0] > big[0] && item[1] > big[1] {
                big = item
            }
        }
        print(big)
        
        if let temp = newList.last {
            for i in 0..<newList.count - 1 {
                let item  = newList[i]
                if item[0] < temp[0] && item[1] < temp[1] {
                    result += 1
                }
            }
        }
        
        print(newList)
        return result
    }
}


let obj = Solution()
//print(obj.numberOfWeakCharacters([[1,5],[10,4],[4,3]]))
//print(obj.numberOfWeakCharacters([[2,2],[3,3]]))
//print(obj.numberOfWeakCharacters([[5,5],[6,3],[3,6]]))
//print(obj.numberOfWeakCharacters([[1,1],[2,1],[2,2],[1,2]]))
//print(obj.numberOfWeakCharacters([[9,4],[8,5],[10,1]]))
//print(obj.numberOfWeakCharacters([[7,7],[1,2],[9,7],[7,3],[3,10],[9,8],[8,10],[4,3],[1,5],[1,5]]))

print(obj.numberOfWeakCharacters([[7,9],[10,7],[6,9],[10,4],[7,5],[7,10]]))


// [[7,7],[1,2],[9,7],[7,3],[3,10],[9,8],[8,10],[4,3],[1,5],[1,5]] // 6
// [[1,1],[2,1],[2,2],[1,2]] // 1
// [[9,4],[8,5],[10,1]] // 0
// Input: properties = [[2,2],[3,3]] // 1
//Input: properties = [[5,5],[6,3],[3,6]] // 0

