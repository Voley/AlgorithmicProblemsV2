import Foundation

// Problem code
func countPrimes(_ n: Int) -> Int {
    if n < 3 {
        return 0
    }
    
    var sieve = Array(repeating:true, count:n)
    sieve[0] = false
    sieve[1] = false
    let ceiling = Int(sqrt(Float(n))) + 1
    for value in 2..<ceiling {
        for index in stride(from: value, to: sieve.count, by: value) {
            if value == index {
                continue
            }
            sieve[index] = false
        }
    }
    var counter = 0
    for val in sieve {
        if val {
            counter += 1
        }
    }
    return counter
}

// Setup
let a = 20
print("Number of primes below 20:")
let b = countPrimes(a)
print(b)
