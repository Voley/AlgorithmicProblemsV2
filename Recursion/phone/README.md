# Letter Combinations of a Phone Number (Medium 17)
Given a string containing digits from 2-9 inclusive, return all possible
letter combinations that the number could represent.

# Solution:

<details><summary>Click here</summary>  
Create recursive function that takes digits, current string, result and mapping
of numbers to characters arrays. Each recursion call add to current string
new letter and call more recursively. O(4^n * n) time, O(4^n * n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
