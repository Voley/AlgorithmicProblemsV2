import random

# Problem code
class Solution:
    def __init__(self, nums):
        self.table = {}
        for index, num in enumerate(nums):
            if num in self.table:
                self.table[num].append(index)
            else:
                self.table[num] = [index]

    def pick(self, target):
        array = self.table[target]
        return random.choice(array)

# Setup
a = [7,1,5,7,6,4,7]
obj = Solution(a)
param_1 = obj.pick(7)
print("Random 7 from array has index " + str(param_1))
