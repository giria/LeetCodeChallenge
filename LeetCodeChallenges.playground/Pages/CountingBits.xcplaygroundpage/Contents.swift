//: [Previous](@previous)

/*:

 ## Counting Bits
 
LeetCode https://leetcode.com/problems/counting-bits/
 
Here is the link:
 https://leetcode.com/problems/counting-bits/
 
[LeetCode](https://leetcode.com/problems/counting-bits/)
 
 
![leetcode](countingbits.png)
 */



func numberOfOneBit(_ n: Int) -> Int {
    let binary = String(n, radix: 2)
    print("Binary : \(binary)")
   let filtered =  binary.filter{$0 == "1"}
    
    return filtered.count
}


func counting(_ n: Int) -> [Int] {
    var result:[Int] = []
    for i in 0...n {
        let num = numberOfOneBit(i)
        print(num)
        result.append(num)
    }
    return result
}

counting(10)  // returns [0,1,1,2,1,2]
//: [Next](@next)
