
// time limite excceded

class Solution {
    func kthSmallestProduct(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        
        
        if nums1.count == 1 && nums2.count == 1 {
            return nums1[0] * nums2[0]
        }
        
        var pNum1 = [Int]()
        var nNum1 = [Int]()
        var pNum2 = [Int]()
        var nNum2 = [Int]()
        
        for item in nums1 {
            if item < 0 {
                nNum1.append(item)
            }
            else {
                pNum1.append(item)
            }
        }
        
        for item in nums2 {
            if item < 0 {
                nNum2.append(item)
            }
            else {
                pNum2.append(item)
            }
        }
        
        let nTotal = (nNum1.count * pNum2.count) + (nNum2.count * pNum1.count)
        
      
        
        var total = [Int]()
        var isPositive = true
        if (nTotal >= k) {
            
            isPositive = false
            
            for i in 0..<nNum1.count {
                for j in 0..<pNum2.count {
                    total.append(nNum1[i] * pNum2[j])
                }
            }
            for i in 0..<nNum2.count {
                for j in 0..<pNum1.count {
                    total.append(nNum2[i] * pNum1[j])
                }
            }
        }
        else {
            
            for i in 0..<nNum1.count {
                for j in 0..<nNum2.count {
                    total.append(nNum1[i] * nNum2[j])
                }
            }
            
            for i in 0..<pNum1.count {
                for j in 0..<pNum2.count {
                    total.append(pNum1[i] * pNum2[j])
                }
            }
        }
        
        print(nNum1)
        print(pNum2)

        print(nNum2)
        print(pNum1)
        
        total.sort()
        print("total -", nTotal)
        print(total)
        
        if isPositive {return total[k-nTotal-1]}
        else {return total[k-1] }
    }
}



let obj = Solution()
//print(obj.kthSmallestProduct([-2,-1,0,1,2], [-3,-1,2,4,5], 6))
//print(obj.kthSmallestProduct([3], [-3], 1))
//print(obj.kthSmallestProduct([-6], [-9], 1))
//
//print(obj.kthSmallestProduct([-9,6,10], [-7,-1,1,2,3,4,4,6,9,10], 15))
print(obj.kthSmallestProduct([7,10], [-8,-6,-4,-3,1,4,4,5], 8))
