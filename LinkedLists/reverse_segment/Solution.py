class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
    def print(self):
        print("Node(" + str(self.val) + ")", end="")
        if self.next is not None:
            print(" -> ", end ="")
            self.next.print()

# Problem code
def reverseBetween(head: ListNode, m: int, n: int) -> ListNode:
    dummy = prev = ListNode(0, head)
    for i in range(0, m - 1):
        prev = prev.next
    after = prev
    for i in range(0, n - m + 1):
        if not after:
            break
        after = after.next
    last = after
    after = after.next
    last.next = None

    newHead, newTail = reverse(prev.next)

    prev.next = newHead
    newTail.next = after

    return dummy.next

def reverse(head):
    if not head:
        return None
    prev = None
    cur = head
    next = head.next

    while cur:
        cur.next = prev
        prev = cur
        cur = next
        next = cur.next if cur is not None else None
    return prev, head

# Setup
a = ListNode(0)
b = ListNode(1)
c = ListNode(2)
d = ListNode(3)
e = ListNode(4)
a.next = b
b.next = c
c.next = d
d.next = e

print("List before rotation on indices 2, 4:")
a.print()
print("\n")
result = reverseBetween(a, 2, 4)
print("After rotation:")
result.print()
