import XCTest

class SignupModelTests: XCTestCase {

    let validUserName = "Valid"
    let validPassword = "Password1"
    func testInit_valid_returnsObject() {
        let r = SignupModel(userName: validUserName, password:validPassword)
        XCTAssertNotNil(r)
        XCTAssertEqual(r!.userName, validUserName)
        XCTAssertEqual(r!.password, validPassword)
    }

    func testUserName_tooShort_returnsNil() {
        let r = SignupModel(userName: "", password:validPassword)
        XCTAssertNil(r)
    }

    func testUserName_tooLong_returnsNil() {
        let r = SignupModel(userName: "12345678901", password:validPassword)
        XCTAssertNil(r)
    }

    func testUserName_underScoreIsAllowed_returnsObject() {
        let r = SignupModel(userName: "___", password:validPassword)
        XCTAssertNotNil(r)
    }

    func testUserName_specialCharactersAreNotAllowed_returnsNil() {
        let r = SignupModel(userName: "♥♥♥", password:validPassword)
        XCTAssertNil(r)
    }

    func testPassword_tooShort_returnsNil() {
        let r = SignupModel(userName: validUserName, password: "")
        XCTAssertNil(r)
    }

    func testPassword_tooLong_returnsNil() {
        let r = SignupModel(userName: validUserName, password: "12345678901")
        XCTAssertNil(r)
    }

    func testPassword_withSpace_returnsNil() {
        let r = SignupModel(userName: validUserName, password: "1 1")
        XCTAssertNil(r)
    }
}
