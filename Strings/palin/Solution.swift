
// Problem code
func isPalindrome(_ s: String) -> Bool {
    let str = Array(s)
    
    var left = 0
    var right = str.count - 1
    
    while left < right {
        if !str[left].isNumber && !str[left].isLetter {
            left += 1
            continue
        }
        if !str[right].isNumber && !str[right].isLetter {
            right -= 1
            continue
        }
        
        if str[left].lowercased() != str[right].lowercased() {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

// Setup
let a = "Race a car"
let b = "A man, a plan, a canal: Panama"
print("\"Race a car\" is valid palindrome? \(isPalindrome(a))")
print("\"A man, a plan, a canal: Panama\" is valid palindrome? \(isPalindrome(b))")
