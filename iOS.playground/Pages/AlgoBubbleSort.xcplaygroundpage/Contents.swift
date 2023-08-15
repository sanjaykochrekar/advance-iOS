extension Array where Element: Comparable {
    
    mutating func bubbleSort() {
        for i in 0...self.count - 1 {
            for j in (i..<self.count - 1).reversed() {
                if self[j] > self[j + 1] {
                    //Swaping using tuples
                    (self[j], self[j + 1]) = (self[j + 1], self[j])
                }
            }
        }
    }
}

var array = [5, 1, 2, 6, 4, 7, 4, 4, 3, 1]
array.bubbleSort()
print(array)

var arrayStr = ["12", "a", "g", "01", "h", "j","a", "s", "d", "i"]
arrayStr.bubbleSort()
print(arrayStr)
