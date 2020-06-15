# Find All Duplicates in an Array (Medium 442)
Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), some elements
appear twice and others appear once.

# Solution:

<details><summary>Click here</summary>  
Go over indices, negate the nums[nums[idx] - 1], if ever find positive at index,
it is a double. Or use a set to store seen values. O(n) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
