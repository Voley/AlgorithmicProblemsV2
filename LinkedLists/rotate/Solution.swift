
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
func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    guard head != nil else { return head }
    guard head?.next != nil else { return head }
    let len = listLength(head)
    var m = k % len
    if m == 0 {
        return head
    }
    m = len - m
    
    var tail = head
    
    while tail?.next != nil {
        tail = tail?.next
    }
    
    tail?.next = head
    for _ in 0..<m {
        tail = tail?.next
    }
    let newHead = tail?.next
    tail?.next = nil
    return newHead
}

func listLength(_ head: ListNode?) -> Int {
    var counter = 0
    var temp = head
    while let h = temp {
        counter += 1
        temp = h.next
    }
    return counter
}

// Setup
print("Setting up a list:")
var a = ListNode(0)
var b = ListNode(1)
var c = ListNode(2)
var d = ListNode(3)
var e = ListNode(4)

a.next = b
b.next = c
c.next = d
d.next = e

a.printList()
print("\n")
print("Rotating by 2")
var result = rotateRight(a, 2)
print("After rotation:")
result?.printList()
