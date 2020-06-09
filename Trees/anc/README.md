# Lowest Common Ancestor of a Binary Tree (Medium 236)
Given a binary tree, find the lowest common ancestor (LCA) of two given
nodes in the tree.

# Solution:

<details><summary>Click here</summary>  
Recursively walk over tree, if root == p or q, return root. If not, go search
left and right side. If you found item on left side and right side, return
root. Otherwise return either left or right side. O(n) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
