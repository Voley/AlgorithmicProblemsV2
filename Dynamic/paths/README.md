# Unique Paths (Medium 62)
A robot is located at the top-left corner of a m x n grid
The robot can only move either down or right at any point in time. The robot is
trying to reach the bottom-right corner of the grid.

How many possible unique paths are there?

# Solution:

<details><summary>Click here</summary>
Number of paths to a array[i][j] is equal to sum of number of paths to
array[i][j-1] and array[i-1][j].
O(n + m) time, O(n + m) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
