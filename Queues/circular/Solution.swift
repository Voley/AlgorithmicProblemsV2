
// Problem code
class MyCircularQueue {

    var size: Int = 0
    var maxSize: Int
    var front: Int = 0
    var back: Int = -1
    var storage: [Int]
    
    /** Initialize your data structure here. Set the size of the queue to be k. */
    init(_ k: Int) {
        self.maxSize = k
        self.storage = Array<Int>(repeating: -1, count: k)
    }
    
    /** Insert an element into the circular queue. Return true if the operation is successful. */
    func enQueue(_ value: Int) -> Bool {
        if isFull() {
            return false
        }
        back = (back + 1) % storage.count
        storage[back] = value
        size += 1
        return true
    }
    
    /** Delete an element from the circular queue. Return true if the operation is successful. */
    func deQueue() -> Bool {
        if isEmpty() {
            return false
        }
        front = (front + 1) % storage.count
        size -= 1
        return true
    }
    
    /** Get the front item from the queue. */
    func Front() -> Int {
        if isEmpty() {
            return -1
        }
        return storage[front]
    }
    
    /** Get the last item from the queue. */
    func Rear() -> Int {
        if isEmpty() {
            return -1
        }
        return storage[back]
    }
    
    /** Checks whether the circular queue is empty or not. */
    func isEmpty() -> Bool {
        return size == 0
    }
    
    /** Checks whether the circular queue is full or not. */
    func isFull() -> Bool {
        return size == maxSize
    }
}
