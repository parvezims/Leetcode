import Foundation


class MyCalendar {
    
    var array :[[Int]]
    init() {
        array  = [[Int]]()
    }
    
    func book(_ start: Int, _ end: Int) -> Bool {
        
        for item in array {
            if max(item[0], start) < min(item[1], end) {
                return false
            }
        }
        array.append([start,end])
        return true
    }
}


let obj = MyCalendar()
print(obj.book(47, 50))
print(obj.book(33, 41))
print(obj.book(39, 45))
print(obj.book(33, 42))
print(obj.book(25, 32))
print(obj.book(26, 35))
print(obj.book(19, 25))
print(obj.book(3, 8))
print(obj.book(8, 13))
print(obj.book(18, 27))




class Shape : NSObject {
    
}

class Triange : Shape {
    
}

class Rectangle : Shape {
    
}


let objTriangle = Triange()
let objRectangle = Rectangle()


if (objTriangle.isKind(of: Triange.self)) {
        print("Trianle")
}

