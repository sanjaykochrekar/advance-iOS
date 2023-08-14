//: [Previous](@previous)
import Foundation


let array = Array(1...100000)


let start = CFAbsoluteTimeGetCurrent()
//for item in stride(from: array.count - 1, to: -1, by: -1) {
//    print(array[item])
//}
let diff = CFAbsoluteTimeGetCurrent() - start




let start3 = CFAbsoluteTimeGetCurrent()
let arrayCount = array.count 
for index in 0..<arrayCount {
    print(array[arrayCount - 1 - index])
}
let diff3 = CFAbsoluteTimeGetCurrent() - start3


let start4 = CFAbsoluteTimeGetCurrent()
let arrayCount4 = array.count - 1
for index in 0...arrayCount4 {
    print(array[arrayCount4 - index])
}
let diff4 = CFAbsoluteTimeGetCurrent() - start4



let second = CFAbsoluteTimeGetCurrent()
for index in 0..<array.count {
    print(array[array.count - 1 - index])
}
let diff2 = CFAbsoluteTimeGetCurrent() - second

print("Took 1 \(diff) seconds")

print("Took 2 \(diff2) seconds")

print("Took 3 \(diff3) seconds")

print("Took 3 \(diff4) seconds")
