class Node:
    def __init__(self, val, prev, next, child):
        self.val = val
        self.prev = prev
        self.next = next
        self.child = child

# Problem code
def flatten(head: 'Node') -> 'Node':
    head, tail = recursive_flatten(head)
    return head

def recursive_flatten(head):
    temp = head
    tail = head
    while temp:
        if temp.child:
            saved = temp.next
            first, last = recursive_flatten(temp.child)
            temp.next = first
            first.prev = temp
            if last:
                last.next = saved
            if saved:
                saved.prev = last
            temp.child = None
        tail = temp
        temp = temp.next
    return head, tail
