
// https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/submissions/

// 378. Kth Smallest Element in a Sorted Matrix

class Solution {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        var flat = [Int]()
        for row in matrix {
            for cell in row {
                flat.append(cell)
            }
        }
        flat.sort()
        return flat[k - 1]
    }
}
