// Swap two values without using temparary variable
// value can be of any type


func swapDemo() {
    var a = "A"
    var b = "B"
    print("a", a)
    print("b", b)
        
    // Use tupple to swap values
    (a, b) = (b, a)
    
    print("a", a)
    print("b", b)
}

swapDemo()


var array = [1, 2]

(array[0], array[1]) = (array[1], array[0])

print(array)
