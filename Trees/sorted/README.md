# Convert Sorted Array to Binary Search Tree (Easy 108)
Given an array where elements are sorted in ascending order, convert it to a
height balanced BST.

# Solution:

<details><summary>Click here</summary>  
Recursively create nodes like so - find a mid element within array bounds,
create a node. Its left child will be recursively found mid of left part of
array, its right child will be mid of right part of array. O(n) time, O(1)
space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
