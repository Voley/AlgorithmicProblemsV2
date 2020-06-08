
// Problem code
import Foundation
func toHex(_ num: Int) -> String {
    var temp: Int = num
    
    if temp == 0 {
        return "0"
    }
    
    if temp < 0 {
        temp += Int(pow(Double(2), Double(32)))
    }
    
    let map = [10: "a", 11: "b", 12: "c", 13: "d", 14: "e", 15: "f", 16: "h"]
    
    var result = ""
    
    while temp != 0 {
        let digit = temp % 16
        let str = digit > 9 ? map[digit]! : String(digit)
        result = str + result
        temp /= 16
    }
    
    return result
}

// Setup
print("1566 in hex is: \(toHex(1566))")
