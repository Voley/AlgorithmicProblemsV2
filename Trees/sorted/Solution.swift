
// Support code
public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init() { self.val = 0; self.left = nil; self.right = nil; }
	public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	}
}

// Problem code
func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
	return arrayToTreeRecursive(nums, 0, nums.count - 1)
}

func arrayToTreeRecursive(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
	if left > right || left < 0 || right >= nums.count {
		return nil
	}
	let mid = (left + right) / 2
	let root = TreeNode(nums[mid])
	root.left = arrayToTreeRecursive(nums, left, mid - 1)
	root.right = arrayToTreeRecursive(nums, mid + 1, right)
	return root
}
