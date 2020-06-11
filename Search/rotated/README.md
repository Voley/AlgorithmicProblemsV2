# Search in Rotated Sorted Array (Medium 33)
Suppose an array sorted in ascending order is rotated at some pivot unknown
to you beforehand.
(i.e., [0,1,2,4,5,6,7] might become [4,5,6,7,0,1,2]).
You are given a target value to search. If found in the array return its index,
otherwise return -1.

# Solution:

<details><summary>Click here</summary>  
Use binary search. If left part is legal, and value falls in it, use regular
binary search, same for right. If not, recur. O(log n) time, O(1) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
