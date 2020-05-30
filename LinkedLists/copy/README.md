# Copy List with Random Pointer (Medium 138)
A linked list is given such that each node contains an additional random pointer which could point to any node in the list or null.
Return a deep copy of the list.

# Solution:

<details><summary>Click here</summary>  
While copying list put original node as key and copied node as value into
hash table. Then iterate over original list and set clones.random by looking
up into has table.
O(n) time, O(n) space
<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
