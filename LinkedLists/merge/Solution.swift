
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
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    var temp1 = l1
    var temp2 = l2
    let dummy = ListNode()
    var prev: ListNode? = dummy
    
    while temp1 != nil || temp2 != nil {
        if let t1 = temp1, let t2 = temp2 {
            if t1.val < t2.val {
                prev?.next = t1
                temp1 = t1.next
            } else {
                prev?.next = t2
                temp2 = t2.next
            }
            prev = prev?.next
        } else if temp1 != nil {
            prev?.next = temp1
            break
        } else {
            prev?.next = temp2
            break
        }
    }
    return dummy.next
}


// Setup
var a = ListNode(0)
var b = ListNode(5)

var c = ListNode(2)
var d = ListNode(3)
var e = ListNode(4)

a.next = b

c.next = d
d.next = e

print("Created lists:")
a.printList()
c.printList()
print("Merging:")
let result = mergeTwoLists(a, c)
result?.printList()
