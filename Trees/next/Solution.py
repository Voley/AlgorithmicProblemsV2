
# Support code
class Node:
    def __init__(self, val: int = 0, left: 'Node' = None, right: 'Node' = None, next: 'Node' = None):
        self.val = val
        self.left = left
        self.right = right
        self.next = next

# Problem code
def connect(root):
    if not root:
        return None
    connect_helper(root.left, root.right)
    return root

def connect_helper(node1, node2):
    if not node1 or not node2:
        return

    node1.next = node2

    connect_helper(node1.left, node1.right)
    connect_helper(node1.right, node2.left)
    connect_helper(node2.left, node2.right)
