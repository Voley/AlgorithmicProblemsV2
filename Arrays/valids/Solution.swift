
// Problem code
func isValidSudoku(_ board: [[Character]]) -> Bool {
    
    var s = Set<Character>()
    
    // check rows
    for row in 0..<9 {
        for col in 0..<9 {
            if board[row][col] == "." {
                continue
            }
            if s.contains(board[row][col]) {
                return false
            }
            s.insert(board[row][col])
        }
        s = Set<Character>()
    }
    
    // check columns
    for col in 0..<9 {
        for row in 0..<9 {
            if board[row][col] == "." {
                continue
            }
            if s.contains(board[row][col]) {
                return false
            }
            s.insert(board[row][col])
        }
        s = Set<Character>()
    }
    
    // check squares
    
    for i in 0..<3 {
        for j in 0..<3 {
            if !checkSquare(i * 3, j * 3, board) {
                return false
            }
        }
    }
    return true
}

func checkSquare(_ row: Int, _ col: Int, _ board: [[Character]]) -> Bool {
    var s = Set<Character>()
    for r in row..<row+3 {
        for c in col..<col+3 {
            if board[r][c] == "." {
                continue
            }
            if s.contains(board[r][c]) {
                return false
            }
            s.insert(board[r][c])
        }
    }
    return true
}

// Setup
let a: Array<Array<Character>> = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

print("Is sudoku valid? \(isValidSudoku(a))")
