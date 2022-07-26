//: [Previous](@previous)
/*:
 
 See https://neetcode.io
 
 
 Here is the link:  [Leetcode](https://leetcode.com/problems/single-number/)
 
 ![leetcode](SingleNumber.png)
 
 ## First Solution
 */



let nums = [2,2,3]
let nums2 = [4,1,2,1,4]
let nums3 = [1]

func singleNumber(_ array: [Int]) -> Int {
     let result =  nums.reduce(0){ $0 ^ $1  }
    return result
}

let result1 = singleNumber(nums)
print("Result1: \(result1)")


/*:
   ## Second solution
 */

func singleNumber2(_ array: [Int]) -> Int {
    var res = 0 // res ^ 0 = res
    for element in array {
        res = res ^ element
    }
    return res
}

singleNumber2(nums3)

//: [Next](@next)
