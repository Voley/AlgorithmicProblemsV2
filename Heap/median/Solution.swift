
// Support code

class Heap {
    private var heap = [Int]()
    
    private let comparator: (_ top: Int, _ bottom: Int) -> Bool
    init(topToBottom comparator: @escaping (Int, Int) -> Bool) {
        self.comparator = comparator
    }
    
    var count: Int {
        return heap.count
    }
    
    func add(_ num: Int) {
        heap.append(num)
        var curr = heap.count - 1
        while curr > 0 {
            let parent = (curr - 1) / 2
            if !comparator(heap[parent], heap[curr]) {
                heap.swapAt(curr, parent)
                curr = parent
            } else {
                break
            }
        }
    }
    
    func extract() -> Int? {
        guard heap.count > 0 else { return nil }
        let result = heap[0]
        let last = heap.removeLast()
        if heap.count > 0 {
            heap[0] = last
            var curr = 0
            while curr < heap.count {
                let next: Int
                let left = curr * 2 + 1, right = curr * 2 + 2
                if right < heap.count {
                    next = comparator(heap[left], heap[right]) ? left : right
                } else if left < heap.count {
                    next = left
                } else {
                    break
                }
                
                if !comparator(heap[curr], heap[next]) {
                    heap.swapAt(curr, next)
                    curr = next
                } else {
                    break
                }
            }
        }
        return result
    }
    
    func peek() -> Int? {
        return heap.first
    }
}

// Problem code
class MedianFinder {

    var maxHeap = Heap(topToBottom: >)
    var minHeap = Heap(topToBottom: <)
    
    /** initialize your data structure here. */
    init() {
        
    }
    
    func addNum(_ num: Int) {
        minHeap.add(num)
        let item = minHeap.extract() ?? 0
        maxHeap.add(item)
        
        if maxHeap.count > minHeap.count {
            let item = maxHeap.extract() ?? 0
            minHeap.add(item)
        }
    }
    
    func findMedian() -> Double {
        
        if maxHeap.count == 0 && minHeap.count == 0 {
            return 0
        }
        
        if maxHeap.count == minHeap.count {
            let a = maxHeap.peek() ?? 0
            let b = minHeap.peek() ?? 0
            return 0.5 * Double((a + b))
        }
        
        return Double(minHeap.peek() ?? 0)
    }
}
