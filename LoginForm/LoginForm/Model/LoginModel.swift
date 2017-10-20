import Foundation

class LoginModel {

    let userName:String
    let password:String

    init?(userName:String, password: String) {
        guard LoginModel.validate(userName, password) else {
           return nil
        }
        self.userName = userName
        self.password = password
    }

    static func validate(_ userName:String, _ password:String) -> Bool {
        return validate(userName: userName) && validate(password:password)
    }

    static func validate(userName:String) -> Bool {
        let charTest = NSPredicate(format:"SELF MATCHES %@", "[A-Za-z_]+")
        let result = charTest.evaluate(with: userName)
        return result && userName.count>=2 && userName.count<=10
    }

    static func validate(password:String) -> Bool {
        let charTest = NSPredicate(format:"SELF MATCHES %@", "[A-Z]+[a-z]+[0-9]+")
        let result = charTest.evaluate(with: password)
        return result && password.count>=6 && password.count<=10
    }
}
