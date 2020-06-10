class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
    def print(self):
        print("Node(" + str(self.val) + ")", end="")
        if self.next is not None:
            print(" -> ", end ="")
            self.next.print()
        else:
            print("")

# Problem code
def mergeKLists(lists):

    heap = []
    dummy = ListNode()
    prev = dummy

    for i in range(0, len(lists)):
        pointer = lists[i]
        if pointer:
            bundle = Pointer_bundle(pointer)
            heap.append(bundle)

    heapq.heapify(heap)

    while len(heap) > 0:
        bundle = heapq.heappop(heap)
        next = bundle.pointer.next
        prev.next = bundle.pointer
        prev = prev.next
        prev.next = None

        if next:
            add = Pointer_bundle(next)
            heapq.heappush(heap, add)
    return dummy.next

class Pointer_bundle:
    def __init__(self, pointer):
        self.pointer = pointer

    def __lt__(self, other):
        return self.pointer.val < other.pointer.val
