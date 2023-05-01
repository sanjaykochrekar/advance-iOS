

/**
 * How many times did set will be called?
 */

import UIKit

var screen = CGRect(x: 0, y: 0, width: 320, height: 480) {
    didSet {
        print("Screen changed")
    }
    //there is also method called "willSet" check in the doc
}

screen.origin.x = 30

var screen2 = screen

screen2.size = CGSize(width: 20, height: 20)

screen2.origin.x = 10

screen.origin.x = 40


class Screen {
    var name = ""
}

var screen3 = Screen() {
    didSet{
        print("Class changed")
    }
}

screen3 = Screen()

screen3.name = "sa"

///Observations
///CGRect is struct
///Struct are value type so value is copied, so changing value in screen2 does not call didset
///modifying properties doesnot call didset in class instance.
///
