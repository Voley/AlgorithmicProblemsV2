# Subsets (Medium 78)
Given a set of distinct integers, nums, return all possible subsets
(the power set).

# Solution:

<details><summary>Click here</summary>  
Use backtracking, and add temp to result every recursive call. Use one element,
then backtrack, then unuse it. Pass index to next recursive call. O(n2^n) time,
O (n!) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
