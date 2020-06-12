
// Problem code
func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var letters = [Character: Int]()
    for letter in magazine {
        if let freq = letters[letter] {
            letters[letter] = freq + 1
        } else {
            letters[letter] = 1
        }
    }
    
    for letter in ransomNote {
        if let freq = letters[letter] {
            if freq < 1 {
                return false
            }
            letters[letter] = freq - 1
        } else {
            return false
        }
    }
    return true
}
