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
def rotateRight(head: ListNode, k: int) -> ListNode:
    if not head or not head.next:
        return head
    l = list_len(head)
    m = k % l
    if m == 0:
        return head
    m = l - m
    tail = head
    while tail.next:
        tail = tail.next
    tail.next = head
    nt = tail
    for i in range(0, m):
        nt = nt.next
    head = nt.next
    nt.next = None
    return head

def list_len(head):
    counter = 0
    while head:
        counter += 1
        head = head.next
    return counter

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

a.print()
print("\n")
print("Rotating by 2")
result = rotateRight(a, 2)
print("After rotation:")
result.print()
