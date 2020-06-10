
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Problem code
def sortedArrayToBST(nums):
    return array_to_tree(nums, 0, len(nums) - 1)

def array_to_tree(nums, left, right):
    if left > right or right > len(nums) - 1 or left < 0:
        return None
    mid = (left + right) // 2
    root = TreeNode(nums[mid])
    root.left = array_to_tree(nums, left, mid - 1)
    root.right = array_to_tree(nums, mid + 1, right)
    return root
