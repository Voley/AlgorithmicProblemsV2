class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
    def print(self):
        print("Node(" + str(self.val) + ")", end="")
        if self.next is not None:
            print(" -> ", end ="")
            self.next.print()
        else:
            print("")

# Problem code
def detectCycle(head):
    fast = slow = head
    while fast and fast.next:
        fast = fast.next.next
        slow = slow.next

        if slow is fast:
            slow = head
            while True:
                if fast == slow:
                    return slow
                slow = slow.next
                fast = fast.next
    return None
