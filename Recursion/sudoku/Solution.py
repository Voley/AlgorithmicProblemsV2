
# Problem code
def solveSudoku(board):
    solve(board)

def solve(board):
    for row in range(0, 9):
        for col in range(0, 9):
            if board[row][col] == ".":
                for digit in ["1", "2", "3", "4", "5", "6", "7", "8", "9"]:
                    if valid(board, row, col, digit):
                        board[row][col] = digit
                        if solve(board):
                            return True
                        else:
                            board[row][col] = "."
                return False
    return True


def valid(board, row, col, ch):

    # check row
    for c in range(0, 9):
        if board[row][c] == ch:
            return False

    # check columns
    for r in range(0, 9):
        if board [r][col] == ch:
            return False

    # check square
    adj_row = (row // 3) * 3
    adj_col = (col // 3) * 3

    for r in range(adj_row, adj_row + 3):
        for c in range(adj_col, adj_col + 3):
            if board[r][c] == ch:
                return False
    return True
