# Edit Distance (Hard 72)
Given two words word1 and word2, find the minimum number of operations required
to convert word1 to word2. You have the following 3 operations permitted on a
word:

Insert a character
Delete a character
Replace a character

# Solution:

<details><summary>Click here</summary>  
Recursively iterate over each character of each string, if they are same,
continue, if they are not, recursively call with +1 index of 2nd string for
deletion, +1 index of first string for insertion, and with +1 to both on
replacement. O(n^2) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
