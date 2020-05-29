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
def hasCycle(head: ListNode) -> bool:
    if not head or not head.next:
        return False
    slow = fast = head
    while slow and fast and fast.next:
        slow = slow.next
        fast = fast.next.next
        if fast == slow:
            return True
    return False

# Setup
a = ListNode(9)
b = ListNode(9)
c = ListNode(1)
d = ListNode(1)
e = ListNode(2)
a.next = b
b.next = c
c.next = d
d.next = b

print("Detecting cycle:")
result = hasCycle(a)
print("Has cycle?:", result)
