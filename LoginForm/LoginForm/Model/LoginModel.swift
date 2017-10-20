import Foundation

class LoginModel {
    init?(userName:String) {
        guard validate(userName) else {
           return nil
        }
    }

    func validate(_ userName:String) -> Bool {
        let charTest = NSPredicate(format:"SELF MATCHES %@", "[A-Za-z_]+")
        let result = charTest.evaluate(with: userName)
        return result && userName.count>=2 && userName.count<=10
    }
}
