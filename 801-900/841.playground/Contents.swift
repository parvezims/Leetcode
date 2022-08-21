import UIKit

// https://leetcode.com/problems/keys-and-rooms/
// 841. Keys and Rooms


class Solution {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
      
        var result = true
        var unlockedRooms = Array(repeating: 0, count: rooms.count)
        unlockedRooms[0] = 1
        unlockRoom(roomList: rooms, index: 0, unlockedRooms: &unlockedRooms)
        for item in unlockedRooms {
            if item == 0 {
                result = false
            }
        }
        return result
    }
    
    func unlockRoom( roomList: [[Int]] ,index : Int,  unlockedRooms: inout [Int]) {
        
        let list = roomList[index]
        if unlockedRooms[index] == 1 {
            
            for value in list {
                
                if unlockedRooms[value] == 0 {
                    unlockedRooms[value] = 1
                    unlockRoom(roomList: roomList, index: value, unlockedRooms: &unlockedRooms)
                }
            }
        }
    }
}


let obj = Solution()

//print(obj.canVisitAllRooms([[1],[2],[3],[]]))
print(obj.canVisitAllRooms([[1,3],[3,0,1],[2],[0]]))
print(obj.canVisitAllRooms([[6,7,8],[5,4,9],[],[8],[4],[],[1,9,2,3],[7],[6,5],[2,3,1]]))




