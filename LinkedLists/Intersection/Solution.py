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
def getIntersectionNode(headA: ListNode, headB: ListNode) -> ListNode:
    lenA = list_len(headA)
    lenB = list_len(headB)
    if lenA > lenB:
        headA = advance(headA, lenA - lenB)
    else:
        headB = advance(headB, lenB - lenA)
    while headA and headB:
        if headA == headB:
            return headA
        headA = headA.next
        headB = headB.next
    return None


def advance(l, c):
    while l and c > 0:
        l = l.next
        c -= 1
    return l

def list_len(l):
    count = 0
    while l:
        count += 1
        l = l.next
    return count

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
print("")
print("Second list:")
b.print()
print(" ")
print("Running code...")
print(" ")
result = getIntersectionNode(a, b)
print("Intersection node:")
print(result.val)
