
// Problem code
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var table = Dictionary<String, [String]>()
    
    for word in strs {
        let key = String(word.sorted())
        if let array = table[key] {
            table[key] = array + [word]
        } else {
            table[key] = [word]
        }
    }
    
    var result = [[String]]()
    for (_, value) in table {
        result.append(value)
    }
    return result
}
