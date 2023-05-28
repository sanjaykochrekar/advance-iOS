
// In the given unsorted array.
// Arrange even number at the left side of the array
// and odd number in right side of the array


func sortArray(array: inout [Int]) {
    
    var left = -1
    var right = array.count
    var travelRight = true
    
    while left < right   {
        if travelRight {
            left += 1
            if array[left] % 2 != 0 {
                travelRight = false
            }
        } else {
            right -= 1
            if array[right] % 2 == 0 {
                travelRight = true
                array.swapAt(left, right)
            }
        }
    }
    
   print(array)
}

var arra = [1,6,7,8,9,9]

sortArray(array: &arra)
