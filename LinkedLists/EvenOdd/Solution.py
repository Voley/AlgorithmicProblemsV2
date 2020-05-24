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

def oddEvenList(head: ListNode) -> ListNode:
    even_head = even_cur = ListNode()
    odd_head = odd_cur = ListNode()
    counter = 0

    while head:
        if counter % 2 == 0:
            even_cur.next = head
            even_cur = head
        else:
            odd_cur.next = head
            odd_cur = head
        head = head.next
        counter += 1
    even_cur.next = odd_head.next
    odd_cur.next = None
    return even_head.next


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
print("\n")
result = oddEvenList(a)
result.print()
