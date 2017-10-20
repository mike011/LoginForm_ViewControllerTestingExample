import XCTest

class LoginModelTests: XCTestCase {

    let validUserName = "Valid"
    let validPassword = "Password1"

    func testInit_valid_returnsObject() {
        let r = LoginModel(userName: validUserName, password: validPassword)
        XCTAssertNotNil(r)
        XCTAssertEqual(r!.userName, validUserName)
        XCTAssertEqual(r!.password, validPassword)
    }

    func testUserName_tooShort_returnsNil() {
        let r = LoginModel(userName: "", password: validPassword)
        XCTAssertNil(r)
    }

    func testUserName_tooLong_returnsNil() {
        let r = LoginModel(userName: "12345678901", password: validPassword)
        XCTAssertNil(r)
    }

    func testUserName_underScoreIsAllowed_returnsObject() {
        let r = LoginModel(userName: "___", password: validPassword)
        XCTAssertNotNil(r)
    }

    func testUserName_specialCharactersAreNotAllowed_returnsNil() {
        let r = LoginModel(userName: "♥♥♥", password: validPassword)
        XCTAssertNil(r)
    }

    func testPassword_tooShort_returnsNil() {
        let r = LoginModel(userName: validUserName, password: "")
        XCTAssertNil(r)
    }

    func testPassword_tooLong_returnsNil() {
        let r = LoginModel(userName: validUserName, password: "12345678901")
        XCTAssertNil(r)
    }

    func testPassword_missingUpperCase_returnsNil() {
        let r = LoginModel(userName: validUserName, password: "abcdef1")
        XCTAssertNil(r)
    }

    func testPassword_missingLowerCase_returnsNil() {
        let r = LoginModel(userName: validUserName, password: "ABCDEF1")
        XCTAssertNil(r)
    }

    func testPassword_missingNumber_returnsNil() {
        let r = LoginModel(userName: validUserName, password: "ABCDEF")
        XCTAssertNil(r)
    }
}
