public class Node {
    public var val: Int
    public var prev: Node?
    public var next: Node?
    public var child: Node?
    public init(_ val: Int) {
        self.val = val
        self.prev = nil
        self.next = nil
        self.child  = nil
    }
}

// Problem code
func flatten(_ head: Node?) -> Node? {
    let (newHead, _) = flatten_recursive(head)
    return newHead
}

func flatten_recursive(_ head: Node?) -> (head: Node?, tail: Node?) {
    let newHead: Node? = head
    var newTail: Node? = head
    var temp: Node? = head
    
    while let t = temp {
        if t.child != nil {
            let saved = t.next
            let (first, last) = flatten_recursive(t.child)
            t.next = first
            first?.prev = t
            if let l = last {
                l.next = saved
            }
            if let s = saved {
                s.prev = last
            }
            t.child = nil
        }
        newTail = t
        temp = temp?.next
    }
    return (newHead, newTail)
}

// Setup

var a = Node(0)
var b = Node(1)
var c = Node(2)
var d = Node(3)
var e = Node(4)
a.next = b
b.child = c
c.next = d
d.next = e

let result = flatten(a)!
print(result)
