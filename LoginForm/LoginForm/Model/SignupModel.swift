import Foundation

class SignupModel {
    let userName:String
    init?(userName: String) {
        guard SignupModel.validate(userName: userName) else {
            return nil
        }
        self.userName = userName
    }

    static func validate(userName:String) -> Bool {
        let charTest = NSPredicate(format:"SELF MATCHES %@", "[A-Za-z_]+")
        let result = charTest.evaluate(with: userName)
        return result && userName.count>=2 && userName.count<=10
    }
}
