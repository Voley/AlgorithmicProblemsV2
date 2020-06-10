# Populating Next Right Pointers in Each Node (Medium 116)
You are given a perfect binary tree where all leaves are on the same level,
and every parent has two children. Populate each next pointer to point to its
next right node. If there is no next right node, the next pointer should be
set to NULL.

# Solution:

<details><summary>Click here</summary>  
Recursively connect left.next to right, then connect up their children,
left.left to left.right, left.right to right.left and right.left to
right.right. O(n) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
