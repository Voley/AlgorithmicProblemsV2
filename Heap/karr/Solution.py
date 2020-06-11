
# Problem code
def findKthLargest(nums, k):
    heap = []

    for i in range(0, k):
        heap.append(nums[i])

    heapq.heapify(heap)

    for i in range(k, len(nums)):
        heapq.heappushpop(heap, nums[i])

    return heapq.nlargest(k, heap)[-1]
