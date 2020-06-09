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
func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
	if root == nil {
		return false
	}
	
	let result = sum - root!.val
	
	if  result == 0 && root?.left == nil && root?.right == nil {
		return true
	}
	
	let left = hasPathSum(root?.left, result)
	let right = hasPathSum(root?.right, result)
	
	return left || right
}
