# Convert a Number to Hexadecimal (Easy 405)
Given an integer, write an algorithm to convert it to hexadecimal.
For negative integer, two’s complement method is used.

# Solution:

<details><summary>Click here</summary>  
If number is negative add 2^32 to it to get two's complement. Iterate over
number, add mod 16 to result, and divide number by 16 each time.
O(n) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
