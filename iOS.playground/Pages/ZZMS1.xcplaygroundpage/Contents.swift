// Given an sorted array and an element k, find the frequency of k
// arr: [1,1,2,3,5,6,9,9,9]
// k=9
// output: 3


//MARK: - Soultiom use binary search to find element and trace left and right of that index
// Tmie complexity for this will be same as binary search log(n)

func getFrequency<T: Comparable>(_ array: [T], _ element: T) -> Int {
    
    var firstIndex = 0
    var lastIndex = array.count - 1
    
    //Implement binary search
    while firstIndex < lastIndex {
        
        let middleIndex = (lastIndex + firstIndex) / 2
        
        if array[middleIndex] == element {
            // When you find index of the element
            return traceFrequency(array, element, middleIndex)
        } else if array[middleIndex] > element {
            lastIndex = middleIndex
        } else {
            firstIndex = middleIndex
        }
    }
    
    return 0
}


func traceFrequency<T: Comparable>(_ array: [T], _ element: T, _ index: Int) -> Int {
    
    if array.count < index {
        return 0
    }
    
    var count = 0
    var temparoryIndex = index
    
    // Find element in left side of the segment
    while temparoryIndex >= 0 && array[temparoryIndex - 1] == element {
        count += 1
        temparoryIndex -= 1
    }
    
    temparoryIndex = index
    
    // Find element in right side of the segment
    while temparoryIndex < array.count - 1 && array[temparoryIndex + 1] == element {
        count += 1
        temparoryIndex += 1
    }
    
    return (count + 1)
}




getFrequency([1, 1, 2, 3, 5, 6, 9, 9, 9], 9)

