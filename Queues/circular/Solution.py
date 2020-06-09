
# Problem code
class MyCircularQueue:
    def __init__(self, k: int):
        """
        Initialize your data structure here. Set the size of the queue to be k.
        """
        self.storage = [None] * k
        self.front = 0
        self.back = -1
        self.size = 0
        self.max_size = k


    def enQueue(self, value: int) -> bool:
        """
        Insert an element into the circular queue. Return true if the operation is successful.
        """

        if self.isFull():
            return False

        self.back = (self.back + 1) % len(self.storage)
        self.storage[self.back] = value
        self.size += 1
        return True


    def deQueue(self) -> bool:
        """
        Delete an element from the circular queue. Return true if the operation is successful.
        """
        if self.isEmpty():
            return False
        self.storage[self.front] = None
        self.front = (self.front + 1) % len(self.storage)
        self.size -= 1
        return True


    def Front(self) -> int:
        """
        Get the front item from the queue.
        """
        if self.isEmpty():
            return -1

        return self.storage[self.front]


    def Rear(self) -> int:
        """
        Get the last item from the queue.
        """
        if self.isEmpty():
            return -1

        return self.storage[self.back]


    def isEmpty(self) -> bool:
        """
        Checks whether the circular queue is empty or not.
        """
        return self.size == 0


    def isFull(self) -> bool:
        """
        Checks whether the circular queue is full or not.
        """
        return self.size == self.max_size
