# Majority Element (Easy 169)
Given an array of size n, find the majority element. The majority element is
the element that appears more than ⌊ n/2 ⌋ times.

# Solution:

<details><summary>Click here</summary>  
Boyer-Moore algorithm. Pick candidate, increase its count by 1. If you see it
again, increase count, if not - decrease. If count reaches 0, take current as
next candidate. O(n) time, O(1) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
