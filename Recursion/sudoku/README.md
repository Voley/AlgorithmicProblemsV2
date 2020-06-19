# Sudoku Solver (Hard 37)
Write a program to solve a Sudoku puzzle by filling the empty cells.

# Solution:

<details><summary>Click here</summary>  
Go over board with row and col variables, once you find a slot, try every
character 1..<9 and validate your choice. If it fits, adjust board and backtrack
to see if board is solved. If it is, return True, if not, change the board back.
O(k^81) time, O(k^81) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
