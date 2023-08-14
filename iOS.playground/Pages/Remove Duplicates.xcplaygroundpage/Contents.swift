// Remove duplicates from array

import Foundation

extension Array where Element: Hashable {
    func removeDuplicate() -> Array {
        var buffer: [Element] = []
        var added: Set<Element> = Set()
        for element in self {
            if !added.contains(element){
                buffer.append(element)
                added.insert(element)
            }
        }
        return buffer
    }
}

var array: [Int] = [1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 8, 9]

print(array.removeDuplicate())

//Short Cut
print(Array(NSOrderedSet(array:array)))
