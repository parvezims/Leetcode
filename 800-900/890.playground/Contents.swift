
// 890. Find and Replace Pattern
// https://leetcode.com/problems/find-and-replace-pattern

class Solution {
    
    func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
        
        var result = [String]()
        
        for word in words {
            if stringPattern(word,pattern) {
                result.append(word)
            }
        }
        return result
    }
    
    func stringPattern(_ string : String , _ pattern: String ) -> Bool{
        
        var result = true
        let patternArr = Array(pattern)
        let stringArr = Array(string)
        if pattern.count != string.count || string.count == 0 { return false }
        var i = 1, j = 1
        
        var pdict:[Character:Int] = [:]
        var sdict:[Character:Int] = [:]
        
        for k in 0..<patternArr.count {
            
            if let _ = sdict[stringArr[k]] {
                i =  sdict[stringArr[k]]!
            }
            else {
                sdict[stringArr[k]] = i
                i += 1
            }
            if let _ =  pdict[patternArr[k]] {
                j = pdict[patternArr[k]]!
            }
            else {
                pdict[patternArr[k]] = j
                j += 1
            }
            
            if i != j {
                result = false
                break
            }
        }
        return result
    }
}

import XCTest

class Tests : XCTestCase {
    
    private let obj = Solution()
    
    func test1() {
        
        let value = obj.findAndReplacePattern(["abc","deq","mee","aqq","dkd","ccc"], "abb")
        let exp = ["mee","aqq"]
        XCTAssertEqual(value.count, exp.count)
        XCTAssertEqual(value.count, 2)
        value.forEach {
            XCTAssertTrue(exp.contains($0))
        }
    }
    
    func test2() {
        
        let value = obj.findAndReplacePattern(["a","b","c"], "a")
        let exp = ["a","b", "c"]
        XCTAssertEqual(value.count, exp.count)
        XCTAssertEqual(value.count, 3)
        value.forEach {
            XCTAssertTrue(exp.contains($0))
        }
    }
    
    func test3() {
        
        let value = obj.findAndReplacePattern(["abc","cba","xyx","yxx","yyx"], "abc")
        let exp = ["abc","cba"]
        XCTAssertEqual(value.count, exp.count)
        XCTAssertEqual(value.count, 2)
        value.forEach {
            XCTAssertTrue(exp.contains($0))
        }
    }
    
    func test4() {
        
        let value = obj.findAndReplacePattern(["ef","fq","ao","at","lx"], "ya")
        let exp = ["ef","fq","ao","at","lx"]
        XCTAssertEqual(value.count, exp.count)
        XCTAssertEqual(value.count, 5)
        value.forEach {
            XCTAssertTrue(exp.contains($0))
        }
    }
}

Tests.defaultTestSuite.run()


