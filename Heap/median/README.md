# Find Median from Data Stream (Hard 295)
Design a data structure that supports the following two operations:

void addNum(int num) - Add a integer number from the data stream to the data
structure.
double findMedian() - Return the median of all elements so far.

# Solution:

<details><summary>Click here</summary>  
Use two heaps, max heap to store left half, and min heap to store right half.
Keep them balanced by adding item to min heap first, then extract and add item
to max heap. O(n log n) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
