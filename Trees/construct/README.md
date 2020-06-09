# Construct Binary Tree from Preorder and Inorder Traversal (Medium 105)
Given preorder and inorder traversal of a tree, construct the binary tree.

# Solution:

<details><summary>Click here</summary>  
First item in preorder list is root. Partition inorder list into two by
finding index of root node, remove first item from preorder list. Then
recursively call on left and right children. If incoming inorder or preorder
is nil, then this child is nil. O(n) time, O(n) space.


<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
