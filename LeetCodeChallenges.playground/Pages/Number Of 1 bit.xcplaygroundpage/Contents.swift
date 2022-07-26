

/*:
 
   # Number of 1 bit
    Here is the link:
 
   [link](https://leetcode.com/problems/number-of-1-bits/)
 
 
   ![image](NumberOf1bit.png)
 */


/*:
   Solution 1.
 */
let test = 0b0010000000000011

func numberOf1bit(_ n: Int) -> Int {
    var res = 0
    var number = n
    while number > 0 {
        res = res + (number % 2)
        number = number >> 1
    }
    return res
    
}

let result = numberOf1bit( test)
print ("Number of 1 bit: \(result)")


/*:
   Solution 2.
 
 We convert to an string and filter the '1'
 */




func numberOfOneBit(_ n: Int) -> Int {
    let binary = String(n, radix: 2)
    print("Binary : \(binary)")
   let filtered =  binary.filter{$0 == "1"}
    
    return filtered.count
}


numberOfOneBit(5)
//var numberOf1bit = binary.reduce(0){  $0 +  $1.wholeNumberValue! }
//print("Number of 1 bit: \(numberOf1bit)")
