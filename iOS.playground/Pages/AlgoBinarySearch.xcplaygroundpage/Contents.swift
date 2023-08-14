// Write function to implemet binary search





//binarySearch(array: , value: "g")
import XCTest

extension Array where Element : Comparable {
    func binarySearch(value: Element) -> Bool {
        var startIndex = 0
        var lastindex = self.count
        var middleIndex: Int = self.count / 2
        
        
        while startIndex < lastindex {
            if self[middleIndex] == value {
                print("found at index: \(middleIndex)")
                return true
            } else if self[middleIndex] < value {
                startIndex = middleIndex
            } else if self[middleIndex] > value {
                lastindex = middleIndex
            }
            middleIndex = (lastindex + startIndex) / 2
        }
        return false
    }

}


class Test: XCTestCase {
    func zeroThIndexTest() {
        print("Test One")
        XCTAssertTrue([1,2,3,4,5].binarySearch(value: 2))
    }
    
    func lastThIndexTest() {
        print("Test One")
        XCTAssertTrue([1,2,3,4,5].binarySearch(value: 3))
    }
    
    func midThIndexTest() {
        print("Test One")
        XCTAssertTrue([1,2,3,4,5].binarySearch(value: 3))
    }
}


Test.defaultTestSuite.run()
