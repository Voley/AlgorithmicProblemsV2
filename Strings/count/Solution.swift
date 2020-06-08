
// Problem code
func countAndSay(_ n: Int) -> String {
    if n == 1 {
        return "1"
    }
    
    var current = "1"
    for _ in 2..<(n + 1) {
        current = helper(current)
    }
    return current
}

func helper(_ s: String) -> String {
    let array = Array(s)
    var group_member = array[0]
    var group_count = 1
    var result = ""
    for i in 1..<array.count {
        if array[i] == group_member {
            group_count += 1
        } else {
            result += String(group_count)
            result += String(group_member)
            group_count = 1
            group_member = array[i]
        }
    }
    result += String(group_count)
    result += String(group_member)
    return result
}

// Setup
print(countAndSay(4))
