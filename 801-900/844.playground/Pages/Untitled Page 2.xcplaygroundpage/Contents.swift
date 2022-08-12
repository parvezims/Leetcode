//: [Previous](@previous)

// Leetcode
import Foundation


/*
 Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.
 Note that after backspacing an empty text, the text will continue empty.

 Example 1:

 Input: s = "ab#c", t = "ad#c"
 Output: true
 Explanation: Both s and t become "ac".
 Example 2:

 Input: s = "ab##", t = "c#d#"
 Output: true
 Explanation: Both s and t become "".
 Example 3:

 Input: s = "a#c", t = "b"
 Output: false
 Explanation: s becomes "c" while t becomes "b".
 */

class Solution {
    
 func backspaceCompare(_ s: String, _ t: String) -> Bool {
        
    let s1 = stack(s)
    let t1 = stack(t)
    if (s1 == t1) {
        return true
    }
    else {
        return false
    }
}

func stack(_ s: String) -> String{
    
    let newString = Array(s)
    var newStr = String()
    for ch in newString {
        if ch == "#" && newStr.count > 0 {
            newStr.removeLast()
        }
        else  if ch != "#" {
             newStr.append(ch)
        }
    }
    return newStr
}
}
