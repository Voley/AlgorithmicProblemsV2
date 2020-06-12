# Set Mismatch (Easy 645)
Array nums contains numbers from 1 to n. But there is one missing and one
duplicate. Return array [missing, duplicate].

# Solution:

<details><summary>Click here</summary>  
Create aux array that marks if number is present in original list. Iterate over
original array, and insert marks into aux array, if you insert twice into same
slot, it is a duplicate. Then iterate over aux array and if there is no mark,
that number is missing. O(n) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
