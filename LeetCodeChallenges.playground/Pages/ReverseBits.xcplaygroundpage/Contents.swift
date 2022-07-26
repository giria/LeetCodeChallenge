//: [Previous](@previous)



/*:
 # Reverse Bits
 
 Here is the link:
 https://leetcode.com/problems/reverse-bits/
 [leetCode](https://leetcode.com/problems/reverse-bits/)
 
 ## Solution 1
 
 */



import Foundation

let twoHundredTwentySeven = 237

let binaryString = String(twoHundredTwentySeven,radix:2)
print(binaryString)

func reverseBits(_ n: UInt32) -> UInt32 {
    var res:UInt32 = 0
    for i in 0...31 {
        let bit  = (n >> i) & 1
          res = res | (bit << (31 - i))
    }
    return res
}

let a = reverseBits(twoHundredTwentySeven)
let b = String(a,radix:2)
print("Solution1: \(b)")







/*:
 ## Solution 2
 
 Algorithm :

 - Convert given number into binary String
 - Prepend the String with "0"s if the String's length is less than 32
 - Then reverse the string
 - Then Convert the String To Int
 */

func reverse(n: Int32) -> String {
    var str = String(n, radix:2)
    
    while (str.count < 32) {
        str = "0" + str
    }
    str = String(str.reversed())
    return str
}
reverse(n: 237)
print("Reversed bit: \(reverse(n:237))")


/*:
   ## Solution 3
 */


func reverseBits(_ n: Int) -> Int {
        (0..<32).reduce(0) {($0<<1)|((n>>$1)&1)}
    }

//let binaryString = String(reverseBits(237),radix:2)

print("Reversed bit: \(String(reverseBits(237),radix: 2))")



//: [Next](@next)
