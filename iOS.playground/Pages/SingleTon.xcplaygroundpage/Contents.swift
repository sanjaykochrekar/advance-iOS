// Singleton is design pattern,
// which ensure that only one instance
// of class present in entire application.



class SingleTon {
    
    // create static instance of the same calss
    // static variables are initiated
    // when program execute.
    static let shared = SingleTon()
    
    // Make initializer private so that
    // other class cannot access initializer.
    private init(){}
    
    // Add reset of the code here
    var name = "Single tone"
    
}

SingleTon.shared.name

SingleTon.shared.name = "Abcd"

SingleTon.shared.name


//MARK:  UserDefault is a singleton
