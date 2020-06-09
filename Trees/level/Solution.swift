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
func levelOrder(_ root: TreeNode?) -> [[Int]] {
	if root == nil {
		return []
	}
	
	var result = [[Int]]()
	var current_result = [Int]()
	var current_queue = [TreeNode]()
	var other_queue = [TreeNode]()
	current_queue.append(root!)
	
	while current_queue.count > 0 {
		let item = current_queue[0]
		current_result.append(item.val)
		if let left = item.left {
			other_queue.append(left)
		}
		if let right = item.right {
			other_queue.append(right)
		}
		current_queue.remove(at: 0)
		
		if current_queue.count == 0 {
			(current_queue, other_queue) = (other_queue, current_queue)
			result.append(current_result)
			current_result = []
		}
	}
	return result
}

// Setup
let a = TreeNode(0)
let b = TreeNode(10)
let c = TreeNode(11)
let d = TreeNode(20)
let e = TreeNode(21)
let f = TreeNode(22)
let h = TreeNode(23)

a.left = b
a.right = c
b.left = d
b.right = e
c.left = f
c.right = h

print("Node level traversal is: \(levelOrder(a))")
