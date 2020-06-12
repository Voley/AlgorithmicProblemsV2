# Ransom Note (Medium 383)
Given an arbitrary ransom note string and another string containing letters
from all the magazines, write a function that will return true if the ransom
note can be constructed from the magazines ; otherwise, it will return false.

# Solution:

<details><summary>Click here</summary>  
Put all letters from magazines to hash table with counts. Then iterate over
ransom note letters and reduce counts in hash table. If any count is less then
0, it fails. O(n) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
