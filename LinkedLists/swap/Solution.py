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
def swapPairs(head: ListNode) -> ListNode:
    if not head:
        return None
    dummy = cur = ListNode(0)

    while head is not None:
        if head.next:
            after = head.next.next
            first, second = swapPair(head)
            cur.next = first
            second.next = after
            head = after
            cur = second
        else:
            cur.next = head
            head = head.next
    return dummy.next


def swapPair(head):
    temp = head.next
    temp.next = head
    head.next = None
    return temp, head

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

print("Created list:")
a.print()
print("Swapping pairs:")
result = swapPairs(a)
result.print()
