
// Problem code
func letterCombinations(_ digits: String) -> [String] {
    let mapping = ["1": [""],
               "2": ["a", "b", "c"],
               "3": ["d", "e", "f"],
               "4": ["g", "h", "i"],
               "5": ["j", "k", "l"],
               "6": ["m", "n", "o"],
               "7": ["p", "q", "r", "s"],
               "8": ["t", "u", "v"],
               "9": ["w","x","y","z"]]
    
    var result = Array<String>()
    let str = ""
    helper(mapping, str, digits, &result)
    return result
}

func helper(_ mapping: Dictionary<String, [String]>, _ currentString: String, _ digits: String, _ result: inout [String]) {
    if digits.count == 0 {
        if currentString.count > 0 {
            result.append(currentString)
        }
    }
    
    let firstLetter = String(digits.prefix(1))
        if let array = mapping[firstLetter] {
            for ch in array {
                helper(mapping, currentString + ch, String(digits.suffix(digits.count - 1)), &result)
            }
    }
}

// Setup
print("Combinations for 24 are:")
let a = "27"
print(letterCombinations(a))
