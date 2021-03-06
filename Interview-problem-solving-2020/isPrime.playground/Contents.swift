import UIKit

//func isPrime (num: Int) -> Bool {
//
//    if num < 2 {
//        return false
//    }
//
//    for i in 2..<num {
//        if num % i == 0 {
//            return false
//        }
//    }
//
//    return true
//}
//
//isPrime(num: 6392376210712736193)

// Sheive
//func countPrime(_ n : Int ) -> Int {
//
//    guard n > 2 else {
//        return 0
//    }
//
//    var prime = Array(repeating: true, count: n)
//
//    // number 0 and number 1 are not prime
//
//    prime[0] = false
//    prime[1] = false
//    var count = 0
//
//    for i in 2..<n {
//        guard prime[i] else {
//           continue
//        }
//        count += 1
//
//        // skip repeaing number
//
//        var index = i * i
//        while index < n {
//            prime[index] = false
//            index += i
//        }
//
//    }
//
//   return count
//}
//
//countPrime(20)


func countPrime(_ n : Int ) -> Int {
 
    guard n > 2 else {
        return 0
    }
    
    var isPrime = Array(repeating: true , count : n)
    
     isPrime[0] = false
     isPrime[1] = false
     var count = 0
    
    for i in 2..<n {
        
        if  isPrime[i] == false {
            continue
        }
        count += 1
        var index = i * i
        
        while index < n {
            isPrime[index] = false
            index += i
        }
        
    }
    
    for i in 2..<n {
        if isPrime[i] {
            print(i)
        }
    }
    
    return count
}
countPrime(10)



