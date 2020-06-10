# Convert Sorted List to Binary Search Tree (Medium 109)
Given a singly linked list where elements are sorted in ascending order,
convert it to a height balanced BST.

# Solution:

<details><summary>Click here</summary>  
Recursively create nodes like so - find list length, pass head and length to
recursive function. Find mid element, make it root, pass left part as left
child, right part of list to right child. O(n log n) time, O(log n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
