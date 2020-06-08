
# Problem code
class MinStack:
    def __init__(self):
        """
        initialize your data structure here.
        """
        self.storage = []
        self.min_storage = []

    def push(self, x: int) -> None:
        self.storage.append(x)
        if len(self.min_storage) == 0 or x <= self.min_storage[-1]:
            self.min_storage.append(x)


    def pop(self) -> None:
        value = self.storage.pop()
        if self.min_storage[-1] == value:
            self.min_storage.pop()
        return value

    def top(self) -> int:
        return self.storage[-1]

    def getMin(self) -> int:
        return self.min_storage[-1]
