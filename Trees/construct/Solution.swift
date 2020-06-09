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
func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
	var temp = preorder
	return recursive_build(&temp, inorder)
}

func recursive_build(_ preorder: inout [Int], _ inorder: [Int]) -> TreeNode? {
	if preorder.count == 0 || inorder.count == 0 {
		return nil
	}
	
	let value = preorder[0]
	preorder.remove(at: 0)
	let idx = inorder.firstIndex(of: value) ?? 0
	let root = TreeNode(value)
	root.left = recursive_build(&preorder, Array(inorder[0..<idx]))
	root.right = recursive_build(&preorder, Array(inorder[idx+1..<inorder.count]))
	return root
}
