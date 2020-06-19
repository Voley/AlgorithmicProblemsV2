
// Problem code
func solveSudoku(_ board: inout [[Character]]) {
	_ = solve(&board)
}

func solve(_ board: inout [[Character]]) -> Bool {
	
	let digits: [Character] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	
	for i in 0..<9 {
		for j in 0..<9 {
			if board[i][j] == "." {
				for digit in digits {
					if isValid(&board, i, j, digit) {
						board[i][j] = digit
						if solve(&board) {
							return true
						} else {
							board[i][j] = "."
						}
					}
				}
				return false
			}
		}
	}
	return true
}

func isValid(_ board: inout [[Character]], _ row: Int, _ col: Int, _ candidate: Character ) -> Bool {
	
	for c in 0..<9 {
		if board[row][c] == candidate {
			return false
		}
	}
	
	for r in 0..<9 {
		if board[r][col] == candidate {
			return false
		}
	}
	
	let adj_row = row / 3 * 3
	let adj_col = col / 3 * 3
	
	for r in adj_row..<(adj_row + 3) {
		for c in adj_col..<(adj_col + 3) {
			if board[r][c] == candidate {
				return false
			}
		}
	}
	return true
}
