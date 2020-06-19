# Maximum Subarray (Easy 53)
Given an integer array nums, find the contiguous subarray (containing at least
  one number) which has the largest sum and return its sum.

# Solution:

<details><summary>Click here</summary>  
Current maximum subarray problem up to index is to either start from this
element and include it, or continue with previous best. So this boils down to
prevSum = max(prevSum + nums[i], nums[i]). Maximum of prevSums is the answer.
O(n) time, O(1) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
