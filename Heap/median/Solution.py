
# Problem code
class MedianFinder:

    def __init__(self):
        """
        initialize your data structure here.
        """
        self.max_heap = [] # left part, negative
        self.min_heap = [] # right part

    def addNum(self, num: int) -> None:
        #heapq.heappush(self.max_heap, -heapq.heappushpop(self.min_heap, num))
        heapq.heappush(self.min_heap, num)
        item = heapq.heappop(self.min_heap)
        heapq.heappush(self.max_heap, -item)

        if len(self.max_heap) > len(self.min_heap):
            item = heapq.heappop(self.max_heap)
            heapq.heappush(self.min_heap, -item)

    def findMedian(self) -> float:
        if len(self.max_heap) == 0 and len(self.min_heap) == 0:
            return 0
        if len(self.max_heap) == len(self.min_heap):
            return 0.5 * (-self.max_heap[0] + self.min_heap[0])
        return self.min_heap[0]
