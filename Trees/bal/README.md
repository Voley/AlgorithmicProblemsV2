# Balanced Binary Tree (Easy 110)
Given a binary tree, determine if it is height-balanced.

# Solution:

<details><summary>Click here</summary>  
Recursively walk over tree, and return -1 if any previous nodes return -1.
If they don't, return -1 if max(left, right) > 1. If all good, return
max(left, right). In main function check if return is not -1. O(n) time,
O(h) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
