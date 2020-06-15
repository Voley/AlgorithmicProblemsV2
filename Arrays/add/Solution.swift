
// Problem code
func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
    
    var result = Array(A.reversed())
    var idx = 0
    var carry = K
    
    while idx < result.count || carry > 0 {
        
        let first = idx < result.count ? result[idx] : 0
        let sum = first + carry
        carry = sum / 10
        let digitToWrite = sum % 10
        
        if idx < result.count {
            result[idx] = digitToWrite
        } else {
            result.append(digitToWrite)
        }
        idx += 1
    }
    return result.reversed()
}
