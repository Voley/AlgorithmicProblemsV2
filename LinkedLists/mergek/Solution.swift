
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
func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
	
	if lists.count == 0 {
		return nil
	}
	
	var temp = lists
	var storage = [ListNode?]()
	while temp.count > 1 {
		for i in stride(from: 1, to: temp.count, by: 2) {
			let nextList = mergePair(temp[i - 1], temp[i])
			storage.append(nextList)
		}
		
		if temp.count > 1 && temp.count % 2 != 0 {
			storage.append(temp[temp.count - 1])
		}
		
		(temp, storage) = (storage, temp)
		storage = []
	}
	return temp[0]
}

func mergePair(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
	
	var p1 = list1
	var p2 = list2
	let dummy: ListNode? = ListNode()
	var prev: ListNode? = dummy
	
	while p1 != nil || p2 != nil {

		guard let pointer1 = p1 else {
			prev?.next = p2
			return dummy?.next
		}
		guard let pointer2 = p2 else {
			prev?.next = p1
			return dummy?.next
		}
		
		if pointer1.val < pointer2.val {
			p1 = p1?.next
			prev?.next = pointer1
			pointer1.next = nil
			prev = prev?.next
		} else {
			p2 = p2?.next
			prev?.next = pointer2
			pointer2.next = nil
			prev = prev?.next
		}
	}
	
	return dummy?.next
}
