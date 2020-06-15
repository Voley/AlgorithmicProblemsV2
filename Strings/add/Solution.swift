
// Problem code
func addStrings(_ num1: String, _ num2: String) -> String {
    if num1.count == 0 {
        return num2
    }
    if num2.count == 0 {
        return num1
    }
    let nums1 = Array(num1)
    let nums2 = Array(num2)
    
    var idx1 = nums1.count - 1
    var idx2 = nums2.count - 1
    var carry = 0
    var result = [String]()
    
    while idx1 >= 0 || idx2 >= 0 || carry > 0 {
        
        let a = idx1 >= 0 ? Int(String(nums1[idx1])) ?? 0 : 0
        let b = idx2 >= 0 ? Int(String(nums2[idx2])) ?? 0 : 0
        
        var temp = a + b + carry
        carry = 0
        
        if temp > 9 {
            carry = temp / 10
            temp = temp - 10
        }
        
        result.append(String(temp))
        idx1 -= 1
        idx2 -= 1
    }
    result.reverse()
    
    return result.joined()
}
