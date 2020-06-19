# Degree of an Array (Easy 697)
Given a non-empty array of non-negative integers nums, the degree of this array
is defined as the maximum frequency of any one of its elements.
Your task is to find the smallest possible length of a (contiguous) subarray of
nums, that has the same degree as nums.

# Solution:

<details><summary>Click here</summary>  
Map item to array of its locations in nums. Then iterate over those mappings,
and substract first index from last index. Minimum sum will be the result. O(n)
time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
