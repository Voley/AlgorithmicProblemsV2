
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
    } else {
        print("")
    }
  }
}
// Problem code
func swapPairs(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
        return head
    }
    
    let dummy = ListNode()
    var current: ListNode? = dummy
    var temp = head
    
    while let t = temp {
        if t.next != nil {
            temp = t.next?.next
            let (first, second) = swapPair(t)
            current?.next = first
            current = second
        } else {
            current?.next = t
            temp = nil
        }
    }
    return dummy.next
}

func swapPair(_ head: ListNode?) -> (ListNode?, ListNode?) {
    if head == nil {
        return (nil, nil)
    }
    
    if let next = head?.next {
        next.next = head
        head?.next = nil
        return(next, head)
    }
    
    return (head, nil)
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

print("Created list:")
a.printList()
print("Swapping pairs:")
let result = swapPairs(a)
result?.printList()
