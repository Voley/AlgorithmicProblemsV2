
# Problem code
def exist(board, word):
    for row in range(0, len(board)):
        for col in range(0, len(board[0])):
            visited = set()
            if find(board, row, col, word, visited):
                return True
    return False

def find(board, row, col, word, visited):
    if len(word) == 0:
        return True
    if (row, col) in visited:
        return False
    if row < 0 or col < 0 or row >= len(board) or col >= len(board[0]):
        return False
    if board[row][col] == word[0]:
        visited.add((row, col))
        result = find(board, row, col - 1, word[1:], visited) \
        or find(board, row, col + 1, word[1:], visited) \
        or find(board, row - 1, col, word[1:], visited) \
        or find(board, row + 1, col, word[1:], visited)
        visited.remove((row, col))
        return result
    return False
