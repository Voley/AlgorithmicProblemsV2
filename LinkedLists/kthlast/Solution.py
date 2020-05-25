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
def removeNthFromEnd(head: ListNode, n: int) -> ListNode:
    dummy = l = r = ListNode(next=head)
    for i in range(0, n):
        r = r.next
    while r.next:
        l = l.next
        r = r.next
    l.next = l.next.next
    return dummy.next

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
print("Removing 2nd from end...")
result = removeNthFromEnd(a, 2)
print("After removal:")
result.print()

print("\n")
print("Removing 4th from end...")
print("After removal:")
r2 = removeNthFromEnd(result, 4)
r2.print()
