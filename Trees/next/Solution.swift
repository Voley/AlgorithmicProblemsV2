
// Support code
public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
	public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}

// Problem code
func connect(_ root: Node?) -> Node? {
	if root == nil {
		return nil
	}
	connect_recursive(root?.left, root?.right)
	return root
}

func connect_recursive(_ node1: Node?, _ node2: Node?) {
	if node1 == nil || node2 == nil {
		return
	}
	node1?.next = node2
	connect_recursive(node1?.left, node1?.right)
	connect_recursive(node1?.right, node2?.left)
	connect_recursive(node2?.left, node2?.right)
}
