
// Problem code
func generateMatrix(_ n: Int) -> [[Int]] {
    var matrix = Array<[Int]>(repeating: Array<Int>(repeating: 0, count: n), count: n)
    
    var counter = 1
    var top = 0
    var left = 0
    var right = n - 1
    var bottom = n - 1
    
    while left <= right && top <= bottom {
        // top to right
        for col in left..<(right + 1) {
            matrix[left][col] = counter
            counter += 1
        }
        top += 1

        // top to bottom
        for row in top..<(bottom + 1) {
            matrix[row][right] = counter
            counter += 1
        }
        right -= 1

        // right to left
        for col in stride(from: right, through: left, by: -1) {
            matrix[bottom][col] = counter
            counter += 1
        }
        bottom -= 1


        // bottom to top
        for row in stride(from: bottom, through: top, by: -1) {
            matrix[row][left] = counter
            counter += 1
        }
        left += 1
    }
    
    return matrix
}

// Setup
print("Generating matrix size 4:")
print(generateMatrix(4))
