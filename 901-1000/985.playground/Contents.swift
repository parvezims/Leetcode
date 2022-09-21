
import Foundation


class Solution {
    func sumEvenAfterQueries(_ nums: [Int], _ queries: [[Int]]) -> [Int] {
        
        var result : [Int] = []
        var list = nums
        var sum = nums.reduce(0) { partialResult, value in
            if value % 2 == 0 {
                return partialResult + value
            }
            else {
                return partialResult + 0
            }
        }
        for i in 0..<queries.count {
            
            let item  = queries[i]
            let value =  list[item[1]]
            list[item[1]] += item[0]
            if list[item[1]] % 2 == 0 {
                sum += list[item[1]]
            }
            if value % 2 == 0 {
                sum -= value
            }
            result.append(sum)
        }
        return result
    }
}


let obj =  Solution()
//print(obj.sumEvenAfterQueries([8,-10,10,-7,4,-2],[[6,4],[-7,0],[-3,5],[6,1],[-8,1],[-10,2]]))

//print(obj.sumEvenAfterQueries([1,2,3,4],[[1,0],[-3,1],[-4,0],[2,3]]))
//print(obj.sumEvenAfterQueries([1,2,3,4],[[1,0],[-3,1],[-4,0],[2,3]]))
print(obj.sumEvenAfterQueries([1],[[4,0]]))
//print(obj.sumEvenAfterQueries([3,2],[[4,0],[3,0]]))


// [8,-10,10,-7,4,-2]
// [[6,4],[-7,0],[-3,5],[6,1],[-8,1],[-10,2]]
//Output
// [16,8,10,16,8,-2]

