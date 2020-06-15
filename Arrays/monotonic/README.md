# Monotonic Array (Easy 896)
An array is monotonic if it is either monotone increasing or monotone decreasing.

An array A is monotone increasing if for all i <= j, A[i] <= A[j].  An array A
is monotone decreasing if for all i <= j, A[i] >= A[j].

Return true if and only if the given array A is monotonic.

# Solution:

<details><summary>Click here</summary>  
Remember first entry in array, and compare to second, find if it is monotonic
or not, and keep checking each value with previous for this rule. O(n) time,
O(1) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
