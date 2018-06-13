//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


print(str)


var number: Int = 6 // Change the number here

var fact: Int = 1

var n: Int = number + 1

for i in 1..<n{
    
    fact = fact * i
}


//Factorial
func factorialThisNum(thisNum: Int) -> Int{
    var theFactor:Int = 1
    var loopEnder = thisNum + 1
    

    for i in thisNum..<loopEnder{
        if thisNum >= 0{
            theFactor = thisNum * i
            print(theFactor)
            return theFactor
        }
        else{
            return 0
        }
    }
    return theFactor
}

//print("The factorial of ", thisB," is: ", factorialThisNum(thisNum: thisB))
factorialThisNum(thisNum: 6)


//GCD
//Euclidean Algorithm
//
//func getGCD(_ num1: Int, _ num2: Int) -> Int {
//    
//    let remainder = num1 % num2
//    if remainder != 0 {
//        return gcd(num2, remainder)
//    } else {
//        return num2
//    }
//}
//
//getGCD(345, 867)

//Fibonacci
func thisFibSeq(num: Int) -> [Int]{
    var fib = [0,1]
    if num <= 1 {
        return fib
    }
    for _ in 0...num{
        let start = fib[fib.count - 2]
        let end = fib.last!
        fib.append(start + end)
    }
    return fib
}
print("The sequence is: ", thisFibSeq(num: 1))

//Fib Recursion

func fibRecursionForNums(steps: Int, start: Int, end: Int) -> [Int]{
    
    if steps == 0 {
        return []
    }
    
    return [start + end] + fibRecursionForNums(steps: steps - 1, start: end, end: start + end)
}

fibRecursionForNums(steps: 9, start: 6, end: 1)


//Common Name
func mostCommonNameInArray(array: [String]) -> String{
    var nameCountDict = [String : Int]()
    
    for name in array {
        if let count = nameCountDict[name]{
            nameCountDict[name] = count + 1
        }
        else{
            nameCountDict[name] = 1
        }
    }
    
    var mostCommonName = ""
    
    for key in nameCountDict.keys {
        
        if mostCommonName == ""{
            mostCommonName = key
        }
        else{
            let count = nameCountDict[key]
            if count! > nameCountDict[mostCommonName]!{
                mostCommonName = key
            }
        }
        print("\(key):\(nameCountDict[key]!)")
    }
    
    return mostCommonName
}

mostCommonNameInArray(array: ["bob", "sally", "jean", "cleff", "cleff", "bob", "sam", "cleff"])




//Demo Test
//public func getTheLargest(thisArray: [Int]) -> Int{
//    var givenArray = thisArray
//    var largestNum:Int
//    var arrangedR = [Int]()
//    
//    if givenArray.count <= 1 {
//        return 0
//    }
//    //Sort in order
//    for i in 0...givenArray.count{
//        arrangedR = givenArray.sorted()
//        
//        if arrangedR[i].max() <= arrangedR[i].min(){
//            
//        }
//    }
//    
//    //get the highest Int
//    
//    return 1
//}
//
//var myArray = [1, 2, 4, -1, 0]
////getTheLargest(thisArray: myArray)

//Question 3:
//Reorder the array
//Group the arrays into smaller groups individually
//Count the number of arrays that resulted

var giraffe = [1, 5, 4, 9, 8, 7, 12, 13, 14]

public func sortGiraffes(nums: [Int]) -> Int{
    var sortedGiraffes = [Int]()
    sortedGiraffes = nums.sorted()
    print(sortedGiraffes)
    let countedGiraffeGroup:Int = sortedGiraffes.count
    
    if nums.count <= 1{
        return 1
    }
    
    for i in 0..<sortedGiraffes.count{
        var indG = [Int]()
        let sortedVal:Int = sortedGiraffes[i]
        indG.append(sortedVal)//append(sortedGiraffes[i])
        print(indG)
        //print(indG.append(sortedGiraffes[i]))
    }
    
    print("The total individual group is: ", countedGiraffeGroup)
    return countedGiraffeGroup
}

sortGiraffes(nums: giraffe)



//Subsequence
//Sort the numbers from the lowest to the highest
//Deduct the first digit from the last digit

var seqArray = [2, 6, 10, 6, 9, 7, 8, 1000]
var zeroArr = [9]
public func findTheAmp(seq: [Int]) -> Int{
    var theAmp:Int
    let sortedSeq = seq.sorted()
    
    //Check if the array is 0
    if seq.count <= 1{
        return 0
    }
    else{
        //Sort the Array in Order of sequence
        //Compute for the amp by deducting the first and last value in the array
        theAmp = sortedSeq.last! - sortedSeq.first!
    }
    
    return theAmp
}

findTheAmp(seq: seqArray)

//Binary Search
//              10
//              /\
//            5   14
//            /    /\
//            1   11 20
class Node{
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?){
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

//Left Branch
var oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
var elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
var fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

//Right Branch
var twentyNode = Node(value: 10, leftChild: nil, rightChild: nil)
var forteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)
var tenRoot = Node(value: 10, leftChild: fiveNode, rightChild: forteenNode)

func search(node: Node?, searchValue: Int) -> Bool{
    if node == nil{
        return false
    }
    
    if node!.value == searchValue{
        return true
    }
    else if searchValue < node!.value{
        return search(node: node?.leftChild, searchValue: searchValue)
    }
    else{
        return search(node: node?.rightChild, searchValue: searchValue)
    }
    //First Iteration
//    if node?.value == searchValue{
//        return true
//    }
//    else{
//        return search(node: node?.leftChild, searchValue: searchValue) || search(node: node?.rightChild, searchValue: searchValue)
//    }
}

search(node: tenRoot, searchValue: 20)

//Binary Gap
//var twentyone:UInt = 100010010
//
//private func findLongestGap(bin: UInt) -> Int{
//    
//    
//    if bin <= 1 {
//        return 0
//    }
////  Split the values into groups split by 1
//    while (bin.hashValue != 1 || bin.hashValue != nil){
//        
//    }
//    
//    //count the number of groups created
//    
//    return 1
//}

//findLongestGap(bin: twentyone)

//Triplets Comparison
var A = [5, 6, 7]
var B = [3, 6, 10]

public func breakItDown(arr1: [Int], arr2: [Int]) -> [Int]{
    var value1:Int = 0
    var value2:Int = 0
    if arr1.count <= 1 && arr2.count <= 1{
        return [0, 0]
    }
    for i in 0..<arr1.count{
        print(arr1[i])
        
        if arr1[i] < arr2[i]{
            value2 += 1
        }
        else if arr1[i] > arr2[i]{
            value1 += 1
        }
        else{
            value1 += 0
            value2 += 0
        }
    }
    return [value1, value2]
}

print(breakItDown(arr1: A, arr2: B)[0], breakItDown(arr1: A, arr2: B)[1])


//Triplets Comp Shortcut
var a = [9, 32, 89]
var b = [-8, 61, 100]

var Alice:Int = ((a[0]>b[0]) ? 1 : 0) + ((a[1]>b[1]) ? 1 : 0) + ((a[2]>b[2]) ? 1 : 0)
var Bob:Int = ((a[0]<b[0]) ? 1 : 0) + ((a[1]<b[1]) ? 1 : 0) + ((a[2]<b[2]) ? 1 : 0)

print(Alice, Bob)

//Triplets another way
public func getPoints(a: [Int], b: [Int]) -> [Int]{
    var Alice:Int = 0
    var Bob:Int = 0
    
    if a.count <= 1{
        return [0, 0]
    }
    Alice = ((a[0]>b[0]) ? 1 : 0) + ((a[1]>b[1]) ? 1 : 0) + ((a[2]>b[2]) ? 1 : 0); print("Alice Point: ", Alice)
    Bob = ((a[0]<b[0]) ? 1 : 0) + ((a[1]<b[1]) ? 1 : 0) + ((a[2]<b[2]) ? 1 : 0); print("Bob Point: ", Bob)
    return [Alice, Bob]
}

print(getPoints(a: a, b: b)[0], getPoints(a: a, b: b)[1])


var s = "https://www.google.com"

if s.range(of: "http") != nil {
    print("So true")
}
