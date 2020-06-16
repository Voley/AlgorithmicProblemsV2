# Combinations (Medium 77)
Given two integers n and k, return all possible combinations of k numbers
out of 1 ... n.

# Solution:

<details><summary>Click here</summary>  
Use backtracking and pick one number at a time to fill temp array. Once temp
array is same size as permutation, add it to result. Each time choose next
number, and check if it was used with set. O(n!) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
