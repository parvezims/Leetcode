// https://leetcode.com/problems/rotate-image/
// 48. Rotate Image

func rotate(_ matrix: inout [[Int]]) {

    let n = matrix.count
    for i in 0..<n {
        for j in i+1..<n {
            
            let temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        }
    }
    
    for i in 0..<n {
        var j = n - 1
        var k = 0
        while k < j {
            let temp = matrix[i][k]
            matrix[i][k] = matrix[i][j]
            matrix[i][j] = temp
            j -= 1
            k += 1
        }
    }
}

func rotate1(_ matrix: inout [[Int]]) {
        var hash = [Int : [Int]]()
        
        for i in 0..<matrix.count {
            hash[i] = matrix[i]
        }
        print(hash)
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                let row = hash[matrix.count-1-j]
                print(row?[i])
                matrix[i][j] = row?[i] ?? 0
            }
        }
}

func rotate2(_ matrix: inout [[Int]]) {
    let matrixCopy = matrix
    for i in 0..<matrixCopy.count {
        matrix[i] = matrixCopy.map{$0[i]}.reversed()
    }
}

var matrix = [[1,2,3], [4,5,6],[7,8,9]]
var matrix1 = [[1,2,3], [4,5,6],[7,8,9]]
var matrix2 = [[1,2,3], [4,5,6],[7,8,9]]

//rotate(&matrix)
//print(matrix)
rotate1(&matrix1)
print(matrix1)

//rotate2(&matrix2)
//print(matrix2)

/*
 
 1 2 3
 4 5 6
 7 8 9
 
 1 4 7
 2 5 8
 3 6 9
 
 
 
 
00 01 02 03
10 11 12 13
20 21 22 23
30 31 32 33

 */
