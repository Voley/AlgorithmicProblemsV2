
# Support code
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Problem code
def sortedListToBST(head):
    if not head:
        return None
    counter = 0
    temp = head
    while temp:
        counter += 1
        temp = temp.next
    return list_to_tree(head, counter)

def list_to_tree(head, length):
    if not head or length == 0:
        return None
    current = head
    target = length // 2
    for i in range(0, target):
        current = current.next
    root = ListNode(current.val)
    root.left = list_to_tree(head, target)
    root.right = list_to_tree(current.next, length - target - 1)
    return root
