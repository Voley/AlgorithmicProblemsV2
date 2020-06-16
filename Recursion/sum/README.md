# Combination Sum (Medium 39)
Given a set of candidate numbers (candidates) (without duplicates) and a target
number (target), find all unique combinations in candidates where the candidate
numbers sums to target.

# Solution:

<details><summary>Click here</summary>  
Use backtracking, sort input, and save index of number used. Pick one number at
a time to fill temp array. Once temp array sum is target, add it to result.
Each time choose next number, and check if it was used with set. O(n!) time,
O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
