# Remove Nth Node From End of List (Medium 19)
Given a linked list, remove the n-th node from the end of list and return its head.

# Solution:

<details><summary>Click here</summary>  
Create dummy node. Put L and R pointers on it. Move R pointer n times.
After that move both L and R until R.next is null.
Replace L.next with L.next.next.
Return dummy head next.
O(n) time, O(1) space.
<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
