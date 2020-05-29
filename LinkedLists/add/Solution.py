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
def addTwoNumbers(l1: ListNode, l2: ListNode) -> ListNode:
    if not l1 and not l2:
        return None
    carry = 0
    dummy = ListNode(0)
    cur = dummy
    while l1 or l2 or carry > 0:
        v1 = l1.val if l1 else 0
        v2 = l2.val if l2 else 0
        l1 = l1.next if l1 else None
        l2 = l2.next if l2 else None
        result = v1 + v2 + carry
        carry = 0
        if result > 9:
            carry = 1
            result = result % 10
        cur.next = ListNode(result)
        cur = cur.next
    return dummy.next

# Setup
a = ListNode(9)
b = ListNode(9)
c = ListNode(1)

d = ListNode(1)
e = ListNode(2)
a.next = b
b.next = c

d.next = e

print("")
print("Adding two numbers:")
a.print()
print("\n")
d.print()
result = addTwoNumbers(a, d)
print("\n")
print("After adding:")
result.print()
