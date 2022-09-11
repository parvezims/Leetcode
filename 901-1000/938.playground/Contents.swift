import UIKit


// https://leetcode.com/problems/range-sum-of-bst/
// 938. Range Sum of BST

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


class Solution {
    
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        var sum = 0
        rangeSumBST(root, low, high, &sum)
        return sum
    }
    
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int, _ sum: inout Int) {
        
        if let node = root {
            if node.val <= high && node.val >= low {
                sum += node.val
            }
            rangeSumBST(root?.left, low, high, &sum)
            rangeSumBST(root?.right, low, high, &sum)
        }
    }
}
// Input: root = [10,5,15,3,7,null,18], low = 7, high = 15
// output = 32

let obj = Solution()
let node2 = TreeNode(10)
let node3 = TreeNode(5)
let node4 = TreeNode(15)
let node5 = TreeNode(3)
let node7 = TreeNode(7)
let node8 = TreeNode(18)
node2.left = node3
node2.right = node4
node3.left = node5
node3.right = node7
node4.right = node8
//let node9 = TreeNode(7)

let head : TreeNode = node2
print(obj.rangeSumBST(head,7,15))



import XCTest

class Tests: XCTestCase {
    
    private let solution = Solution()
    
    // FAILED
    func test0() {
        
        let node2 = TreeNode(10)
        let node3 = TreeNode(5)
        let node4 = TreeNode(15)
        let node5 = TreeNode(3)
        let node7 = TreeNode(7)
        let node8 = TreeNode(18)
        node2.left = node3
        node2.right = node4
        node3.left = node5
        node3.right = node7
        node4.right = node8
        let head : TreeNode = node2
        let value = solution.rangeSumBST(head, 7, 17)
        XCTAssertEqual(value, 30)
    }
    // PASSED
    func test1() {
        let node2 = TreeNode(10)
        let node3 = TreeNode(5)
        let node4 = TreeNode(15)
        let node5 = TreeNode(3)
        let node7 = TreeNode(7)
        let node8 = TreeNode(18)
        node2.left = node3
        node2.right = node4
        node3.left = node5
        node3.right = node7
        node4.right = node8
        let head : TreeNode = node2
        let value = solution.rangeSumBST(head, 7, 17)
        XCTAssertEqual(value, 32)
    }
}

Tests.defaultTestSuite.run()


