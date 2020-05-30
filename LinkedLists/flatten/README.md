# Flatten a Multilevel Doubly Linked List (Medium 430)
You are given a doubly linked list which in addition to the next and previous pointers, it could have a child pointer, which may or may not point to a separate doubly linked list. These child lists may have one or more children of their own, and so on, to produce a multilevel data structure, as shown in the example below.Flatten the list so that all the nodes appear in a single-level, doubly linked list. You are given the head of the first level of the list.

# Solution:

<details><summary>Click here</summary>  
Iterate over list until you find next child, then recursively call function on them. Return new head and tail from that function. Link nodes in description.
<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
