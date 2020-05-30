
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  public func printList() {
    print("Node(\(self.val))", terminator: "")
    if let next = self.next {
      print(" -> ", terminator: "")
      next.printList()
    }
  }
}
// Problem code
func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
    let dummy: ListNode? = ListNode(0, head)
    var prev = dummy
    var after = dummy
    var last = dummy
    
    for _ in 0..<(m-1) {
        prev = prev?.next
    }
    after = prev
    
    for _ in 0..<(n - m + 1) {
        after = after?.next
    }
    last = after
    after = after?.next
    last?.next = nil
    
    let (newHead, newTail) = reverseList(prev?.next)
    
    prev?.next = newHead
    newTail?.next = after
    return dummy?.next
}

func reverseList(_ head: ListNode?) -> (head: ListNode?, tail: ListNode?) {
    var prev: ListNode?
    var current: ListNode? = head
    var next = current?.next
    
    while let c = current {
        c.next = prev
        prev = current
        current = next
        next = current?.next
    }
    
    return (prev, head)
}

// Setup

var a = ListNode(0)
var b = ListNode(1)
var c = ListNode(2)
var d = ListNode(3)
var e = ListNode(4)
a.next = b
b.next = c
c.next = d
d.next = e

print("List before rotation on indices 2, 4:")
a.printList()
print("\n")
let result = reverseBetween(a, 2, 4)
print("After rotation:")
result?.printList()
