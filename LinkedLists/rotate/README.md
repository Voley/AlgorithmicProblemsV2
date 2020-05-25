# Rotate List (Medium 61)
Given a linked list, rotate the list to the right by k places, where k is non-negative.

# Solution:

<details><summary>Click here</summary>  
Find tail. Link tail and head. From tail proceed len - (k mod len) times.  
It will be a new tail. Break connection from tail to head and return new head.  
O(n) time, O(1) space.
<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
