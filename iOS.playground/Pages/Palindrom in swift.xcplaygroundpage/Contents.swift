// Write function that check give
// String is palindrom
// create an string extension

import Foundation

//extension String {
//    static func isPalindrome() -> Bool {
//        return (self === self.reversed())
//    }
//}


//print(String("abcd".reversed()))


let array = [2, 5, 0]

var secondGretestIndex = 0
var greatestItemIndex = 0
var secondGreatestIndex = 0

if array[0] > array[1] {
    greatestItemIndex = 0
    secondGretestIndex = 1
} else {
    greatestItemIndex = 1
    secondGretestIndex = 0
}

for index in 2..<array.count {
    if array[index] > array[greatestItemIndex] {
        secondGretestIndex = greatestItemIndex
        greatestItemIndex = index
       
    } else if array[index] > array[secondGretestIndex] && !(array[index] == array[greatestItemIndex])  {
        secondGretestIndex = index
    }
}

dump(secondGretestIndex)
dump(array[secondGretestIndex])


