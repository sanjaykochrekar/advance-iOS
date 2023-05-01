// inout used to pass address(reffrence) as parameters.
// So if you change value of the variable,
// it update the main variable

func swap<T>(_ a: inout T, _ b: inout T) {
    (a, b) = (b, a)
}

var a = "A"
var b = "B"

print("a", a) // a A
print("b", b) // b B

print("\nAfter Swapping")
// Use & to pass address of the variable
swap(&a, &b)

print("a", a) // a B
print("b", b) // b A
