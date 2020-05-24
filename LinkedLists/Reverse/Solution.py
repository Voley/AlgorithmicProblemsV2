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

def reverseList(head: ListNode) -> ListNode:
    if not head:
        return head

    prev = None
    cur = head
    next = head.next

    while cur:
        cur.next = prev
        prev = cur
        cur = next
        if cur:
            next = cur.next
    return prev

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

print("Created a list:")
print("")
a.print()
print("\n")
print("After code:")
print(" ")
result = reverseList(a)
result.print()
