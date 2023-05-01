import UIKit

@propertyWrapper
struct EmailPropertyWraper {
    
    private var _value: String
    
    var wrappedValue: String {
        get {
            // When user access email
            return isValideEmail(_value) ? _value : String()
        }
        set {
            _value = newValue
        }
    }
    
    //Function for validation logic
    private func isValideEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    init(emailValue: String = "") {
        _value = emailValue
    }
}


struct User {
    //Setting intial value
    @EmailPropertyWraper(emailValue: "a@b.com") var email
    
    // function returns true if email is valid else return false
    public func isValid() -> Bool {
        return !email.isEmpty
    }
}

var user = User()

user.email = "a@.com"
user.isValid() // false
print(user.email)


user.email = "a@b.com"
user.isValid() // true
print(user.email)
