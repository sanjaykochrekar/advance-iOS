/**
 *Find shrotest way to sort array *
 */

var animals = ["fish", "cat", "chicken", "dog"]
animals.sort {(one: String, two: String) -> Bool in
    return one < two
}

//animals.sorted { return $0 < $0 }

animals.sort(by: <)

//animals.sort(with: <)

//animals.sort($0 < $1)

print(animals)
