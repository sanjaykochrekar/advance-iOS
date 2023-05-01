// What is the output of the following?

import UIKit

struct IntegralSize {
    var width: Int
    var height: Int
    
    init(_ size: CGSize) {
        self.width = Int(size.width)
        self.height = Int(size.height)

        if size.height == 50 {
            self.height = 25
        }

        if size.width == 50 {
            self.width = 25
        }
    }
}

//Comment init to run this line
let size = IntegralSize(width: 50, height: 50)

let sizeOfBoard = IntegralSize(CGSize(width: 50, height: 50))

print(size, sizeOfBoard)


// Answer: Error
