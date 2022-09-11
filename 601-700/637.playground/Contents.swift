import UIKit

// https://leetcode.com/problems/average-of-levels-in-binary-tree/
// 637. Average of Levels in Binary Tree

public class TreeNode {
    
    public var val:Int
    public var left: TreeNode?
    public var right:TreeNode?
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    public init(_ val:Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    public init(_ val:Int, _ left:TreeNode , _ right:TreeNode) {
        self.val = val
        self.left = left
        self.right = right
    }
}



class Solution {
    
    
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        
        var result: [Double] = []
        var sum : [Int] = []
        var count : [Int] = []
        self.postOrderTravesal(root:root, sum:&sum, count:&count, level: 0)
        print(sum)
        print(count)
        for i in 0..<sum.count {
            let average = Double(sum[i]) / Double(count[i])
            result.append(average)
        }
        return result
    }
    
    func postOrderTravesal(root node:TreeNode?, sum:inout [Int], count:inout [Int], level: Int) {
    
        guard  node != nil , let val = node?.val else  {
            return
        }
        if sum.count - 1 >= level {
            sum[level] += val
            count[level] += 1
        }
        else {
            sum.append(val)
            count.append(1)
        }
        postOrderTravesal(root:node?.left, sum:&sum, count:&count, level:level+1)
        postOrderTravesal(root:node?.right, sum:&sum, count:&count, level:level+1)
    }
}


let obj = Solution()
let node2 = TreeNode(1)
let node3 = TreeNode(7)
let node4 = TreeNode(3)
let node5 = TreeNode(22)
let node7 = TreeNode(5)
let node8 = TreeNode(61)
let node9 = TreeNode(33)

let head : TreeNode = node5
node5.left = node3
node5.right = node8
node3.left = node2
node3.right = node4
node8.left = node7
node8.right = node9
print(obj.averageOfLevels(head))
