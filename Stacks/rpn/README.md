# Evaluate Reverse Polish Notation (Medium 150)
Evaluate the value of an arithmetic expression in Reverse Polish Notation.
Input: ["2", "1", "+", "3", "\*"]
Output: 9
Explanation: ((2 + 1) * 3) = 9

# Solution:

<details><summary>Click here</summary>  
Have stack to keep operands. When you see operator, process two items from
operands stack. Keep going until one element remains. O(n) time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
