
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Problem code
def bstFromPreorder(preorder):
    return construct(preorder, 0, len(preorder) - 1)

def construct(array, left, right):
    if left > right:
        return None

    root = TreeNode(array[left])

    edge = left + 1

    while edge <= right:
        if array[edge] > root.val:
            break
        edge += 1

    root.left = construct(array, left + 1, edge - 1)
    root.right = construct(array, edge, right)

    return root
