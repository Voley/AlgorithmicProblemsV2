# Implement Queue using Stacks (Easy 232)
Implement the following operations of a queue using stacks.

push(x) -- Push element x to the back of queue.
pop() -- Removes the element from in front of queue.
peek() -- Get the front element.
empty() -- Return whether the queue is empty.

# Solution:

<details><summary>Click here</summary>  
Have two stacks, one to store new elements, second to read elements. When you
need to dequeue, and second stack is empty, move all elements from write stack
to read stack and return top element. O(1) amortized time, O(n) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
