# Merge Intervals (Medium 56)
Given a collection of intervals, merge all overlapping intervals.

# Solution:

<details><summary>Click here</summary>  
Sort array by interval starts, then walk with a pointer from second. If it
intersects, change the previous one, if it doesn't, add it to result. O(n) time,
O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
