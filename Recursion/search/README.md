# Word Search (Medium 79)
Given a 2D board and a word, find if the word exists in the grid.

# Solution:

<details><summary>Click here</summary>  
Iterate over each item in the grid, starting the DFS in each of items, and keep
visited set while walking. Go left, right, top, bottom. If you ever found full
word - return. O(n * m * 4^L), where L is word length time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
