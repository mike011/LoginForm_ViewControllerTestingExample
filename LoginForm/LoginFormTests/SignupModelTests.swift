import XCTest

class SignupModelTests: XCTestCase {

    let validUserName = "Valid"
    let validPassword = "Password1"
    let validEmail = "a@b.ca"

    func testInit_valid_returnsObject() {
        let r = SignupModel(userName: validUserName, password:validPassword,email:validEmail)
        XCTAssertNotNil(r)
        XCTAssertEqual(r!.userName, validUserName)
        XCTAssertEqual(r!.password, validPassword)
        XCTAssertEqual(r!.email, validEmail)
    }

    func testUserName_tooShort_returnsNil() {
        let r = SignupModel(userName: "", password:validPassword,email:validEmail)
        XCTAssertNil(r)
    }

    func testUserName_tooLong_returnsNil() {
        let r = SignupModel(userName: "12345678901", password:validPassword,email:validEmail)
        XCTAssertNil(r)
    }

    func testUserName_underScoreIsAllowed_returnsObject() {
        let r = SignupModel(userName: "___", password:validPassword,email:validEmail)
        XCTAssertNotNil(r)
    }

    func testUserName_specialCharactersAreNotAllowed_returnsNil() {
        let r = SignupModel(userName: "♥♥♥", password:validPassword,email:validEmail)
        XCTAssertNil(r)
    }

    func testPassword_tooShort_returnsNil() {
        let r = SignupModel(userName: validUserName, password: "",email:validEmail)
        XCTAssertNil(r)
    }

    func testPassword_tooLong_returnsNil() {
        let r = SignupModel(userName: validUserName, password: "12345678901",email:validEmail)
        XCTAssertNil(r)
    }

    func testPassword_withSpace_returnsNil() {
        let r = SignupModel(userName: validUserName, password: "1 1",email:validEmail)
        XCTAssertNil(r)
    }

    func testEmail_invalid_returnsNil() {
        let r = SignupModel(userName: validUserName, password: validPassword,email:"invalidEmail")
        XCTAssertNil(r)
    }
}
