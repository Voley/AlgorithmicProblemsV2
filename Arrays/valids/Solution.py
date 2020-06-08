
# Problem code
def isValidSudoku(board):

    s = set()

    # check rows
    for row in range(0, 9):
        for col in range(0, 9):
            if board[row][col] == ".":
                continue
            if board[row][col] in s:
                return False
            s.add(board[row][col])
        s = set()

    # check columns
    for col in range(0, 9):
        for row in range(0, 9):
            if board[row][col] == ".":
                continue
            if board[row][col] in s:
                return False
            s.add(board[row][col])
        s = set()

    # check 3x3 grids
    for i in range(0, 3):
        for j in range(0, 3):
            if not checkBounds(i * 3, j * 3, board):
                return False

    return True

def checkBounds(top_left_row, top_left_col, board):
    s = set()
    for row in range(top_left_row, top_left_row + 3):
        for col in range(top_left_col, top_left_col + 3):
            if board[row][col] == ".":
                    continue
            if board[row][col] in s:
                return False
            s.add(board[row][col])
    return True

# Setup
a = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]
print("Is sudoku valid? " + str(isValidSudoku(a)))
