
# Problem code
def kClosest(points, K):
    heap = []
    for i in range(0, K):
        dist = distance(points[i])
        heap.append((-dist, points[i]))
    heapq.heapify(heap)
    for i in range(K, len(points)):
        dist = distance(points[i])
        heapq.heappushpop(heap, (-dist, points[i]))
    result = []
    for i in range(0, K):
        dist, point = heapq.heappop(heap)
        result.append(point)
    return result

def distance(p):
    return sqrt(p[0] * p[0] + p[1] * p[1])
