
// Problem code
func isMonotonic(_ A: [Int]) -> Bool {
    
    enum MonotonicType {
        case decreasing
        case increasing
        case undefined
    }

    if A.count <= 2 {
        return true
    }
    
    var type = MonotonicType.undefined
    var prev = A[0]
    for i in 1..<A.count {
        if type == .undefined {
            if prev > A[i] {
                type = .decreasing
            } else if prev < A[i] {
                type = .increasing
            }
        }
        
        if type == .decreasing && prev < A[i] {
            return false
        }
        
        if type == .increasing && prev > A[i] {
            return false
        }
        prev = A[i]
    }
    return true
}
