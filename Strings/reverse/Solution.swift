
// Problem code
func reverseWords(_ s: String) -> String {
    let substrings = s.split(separator: " ")
    return substrings.reversed().joined(separator: " ")
}
// Setup
let a = "a good   example"
print(reverseWords(a))
