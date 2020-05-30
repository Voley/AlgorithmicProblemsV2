class Node:
    def __init__(self, x: int, next: 'Node' = None, random: 'Node' = None):
        self.val = int(x)
        self.next = next
        self.random = random

    def printList(self):
        print("Node {:d}".format(self.val), end = "")
        if self.random:
            print(", random:{:d}".format(self.random.val), "->", end = " ")
        if self.next:
            self.next.printList()

# Problem code
def copyRandomList(head: 'Node') -> 'Node':
    if not head:
        return None
    table = {}
    dummy = cur = Node(0)
    temp = head

    while temp:
        cur.next = Node(temp.val)
        table[temp] = cur.next
        cur = cur.next
        temp = temp.next
    cur = dummy.next
    temp = head

    while temp:
        if temp.random:
            cur.random = table[temp.random]
        temp = temp.next
        cur = cur.next

    return dummy.next

# Setup
a = Node(1)
b = Node(2)
c = Node(3)
a.next = b
b.next = c
a.random = c
b.random = c

a.printList()
print("")
print("Copying...")
result = copyRandomList(a)
result.printList()
