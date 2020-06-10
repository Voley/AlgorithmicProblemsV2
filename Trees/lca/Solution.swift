
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
func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
	if root == nil {
		return nil
	}
	
	guard let rval = root?.val else { return nil }
	guard let pval = p?.val else { return nil }
	guard let qval = q?.val else { return nil }
	
	if pval < rval && qval < rval {
		return lowestCommonAncestor(root?.left, p, q)
	}
	
	if pval > rval && qval > rval {
		return lowestCommonAncestor(root?.right, p, q)
	}
	
	return root
}
