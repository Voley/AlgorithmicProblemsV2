
# Problem code
class MyQueue:

    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.enq_storage = []
        self.deq_storage = []

    def push(self, x: int) -> None:
        """
        Push element x to the back of queue.
        """
        self.enq_storage.append(x)

    def pop(self) -> int:
        """
        Removes the element from in front of queue and returns that element.
        """
        if len(self.deq_storage) == 0:
            self.moveToDeq()
        return self.deq_storage.pop()

    def moveToDeq(self):
        for item in self.enq_storage[::-1]:
            self.deq_storage.append(item)
        self.enq_storage = []

    def peek(self) -> int:
        """
        Get the front element.
        """
        if len(self.deq_storage) == 0:
            self.moveToDeq()
        return self.deq_storage[-1]

    def empty(self) -> bool:
        """
        Returns whether the queue is empty.
        """
        return len(self.enq_storage) + len(self.deq_storage) == 0
