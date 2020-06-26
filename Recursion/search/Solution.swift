
// Problem code
func exist(_ board: [[Character]], _ word: String) -> Bool {
	let wordArray = Array(word)
	
	for row in 0..<board.count {
		for col in 0..<board[0].count {
			var visited = Set<[Int]>()
			if find(board, &visited, row, col, wordArray, 0) {
				return true
			}
		}
	}
	return false
}

func find(_ board: [[Character]], _ visited: inout Set<[Int]>, _ row: Int, _ col: Int, _ word: [Character], _ characterIndex: Int) -> Bool {
	if characterIndex >= word.count {
		return true
	}
	if row < 0 || col < 0 || row >= board.count || col >= board[0].count {
		return false
	}
	if visited.contains([row, col]) {
		return false
	}
	
	if board[row][col] == word[characterIndex] {
		visited.insert([row, col])
		let result = find(board, &visited, row + 1, col, word, characterIndex + 1) ||
				 find(board, &visited, row - 1, col, word, characterIndex + 1) ||
				 find(board, &visited, row, col + 1, word, characterIndex + 1) ||
				 find(board, &visited, row, col - 1, word, characterIndex + 1)
		visited.remove([row, col])
		return result
	}
	return false
}
