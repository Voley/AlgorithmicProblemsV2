
// Problem code
func myPow(_ x: Double, _ n: Int) -> Double {
    if n == 0 {
        return 1
    }
    
    if n == 1 {
        return x
    }
    
    if n < 0 {
        return 1 / myPow(x, -n)
    }
    
    if n % 2 == 0 {
        return myPow(x * x, n / 2)
    }
    return x * myPow(x * x, n / 2)
}

// Setup
print("2 to power 11 is: ")
let a = myPow(2, 11)
print(a)
