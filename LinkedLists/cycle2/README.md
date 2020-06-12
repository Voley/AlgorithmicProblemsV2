# Linked List Cycle II (Medium 142)
Given a linked list, determine if it has a cycle in it and return node where it
starts.

# Solution:

<details><summary>Click here</summary>  
Floyd's algorithm. Create slow and fast pointers and move them. If they ever
meet, there is a cycle. After they met, move slow to head and move slow and
fast by one until they meet. O(n) time, O(1) space.
<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
