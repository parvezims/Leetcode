
// https://leetcode.com/problems/range-sum-query-mutable/
class NumArray {

    var list:[Int]
    init(_ nums: [Int]) {
        list = nums
    }
    
    func update(_ index: Int, _ val: Int) {
        list[index] = val
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var sum = 0
        for i in left...right {
            sum += list[i]
        }
        return sum
    }
}


let obj = NumArray([1, 3, 5])
print(obj.sumRange(0, 2))
print(obj.update(1, 2))
print(obj.sumRange(0, 2))



