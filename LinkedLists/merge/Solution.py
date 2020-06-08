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
def mergeTwoLists(l1, l2):

    dummy = ListNode()
    prev = dummy

    while l1 or l2:
        if l1 and l2:
            if l1.val < l2.val:
                prev.next = l1
                l1 = l1.next
            else:
                prev.next = l2
                l2 = l2.next
            prev = prev.next
        else:
            if l1:
                prev.next = l1
            else:
                prev.next = l2
            break
    return dummy.next

# Setup
a = ListNode(0)
b = ListNode(5)

c = ListNode(2)
d = ListNode(3)
e = ListNode(4)

a.next = b

c.next = d
d.next = e

print("Created lists:")
a.print()
c.print()
print("Merging:")
result = mergeTwoLists(a, c)
result.print()
