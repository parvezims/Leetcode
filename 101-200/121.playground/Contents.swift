

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var profit = 0
        var buy = prices[0]
        for sell in 1..<prices.count {
            
            if prices[sell] > buy {

                profit = max(profit, prices[sell] - buy)
            }
            else {
                buy = prices[sell]
            }
        }
        return profit
    }
}


let obj = Solution()
print(obj.maxProfit([7,1,5,3,6,4]))
