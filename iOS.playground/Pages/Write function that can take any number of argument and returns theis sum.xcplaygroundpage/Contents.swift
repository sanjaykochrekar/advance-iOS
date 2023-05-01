// Write function that can take
// any number of arguments.
// And returns their sum.
// Argument can be Double or Int



// Use generic (AdditiveArithmetic) for allowing Addable quantity
// ... used to allow any number of arguments
func sum<T: AdditiveArithmetic>(list: T...)-> T {
    var total = T.zero
    for item in list {
        total += item
    }
    return total
}


sum(list: 1, 2, 4, 9)
sum(list: 1, 2.9, 4, 9.8)
