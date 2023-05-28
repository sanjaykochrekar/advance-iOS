//
//The Tower of Hanoi (also called The problem of Benares Temple[1] or Tower of Brahma or Lucas' Tower[2] and sometimes pluralized as Towers, or simply pyramid puzzle[3]) is a mathematical game or puzzle consisting of three rods and a number of disks of various diameters, which can slide onto any rod. The puzzle begins with the disks stacked on one rod in order of decreasing size, the smallest at the top, thus approximating a conical shape. The objective of the puzzle is to move the entire stack to the last rod, obeying the following rules:
//
//    Only one disk may be moved at a time.
//    Each move consists of taking the upper disk from one of the stacks and placing it on top of another stack or on an empty rod.
//    No disk may be placed on top of a disk that is smaller than it.

enum Tower : String {
    case Tower1 = "Tower 1"
    case Tower2 = "Tower 2"
    case Tower3 = "Tower 3"
}

func tower(numberOfDisks: Int, source x: Tower, dest y: Tower, temp z: Tower) {
    if (numberOfDisks > 0) {
        tower(numberOfDisks: numberOfDisks - 1, source:x, dest:z, temp:y)
        print("Move disk \(numberOfDisks) from \(x.rawValue) to \(y.rawValue)")
        tower(numberOfDisks: numberOfDisks - 1, source:z, dest:y, temp:x)
    }
}


tower(numberOfDisks:2, source:.Tower1, dest:.Tower3 , temp:.Tower2)

