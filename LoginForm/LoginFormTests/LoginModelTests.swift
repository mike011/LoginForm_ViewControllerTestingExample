import XCTest

class LoginModelTests: XCTestCase {

    let validUserName = "Valid"

    func testInit_valid_returnsObject() {
        let r = LoginModel(userName: validUserName)
        XCTAssertNotNil(r)
    }

    func testUserName_tooShort_returnsNil() {
        let r = LoginModel(userName: "")
        XCTAssertNil(r)
    }

    func testUserName_tooLong_returnsNil() {
        let r = LoginModel(userName: "12345678901")
        XCTAssertNil(r)
    }

    func testUserName_underScoreIsAllowed_returnsObject() {
        let r = LoginModel(userName: "___")
        XCTAssertNotNil(r)
    }

    func testUserName_specialCharactersAreNotAllowed_returnsNil() {
        let r = LoginModel(userName: "♥♥♥")
        XCTAssertNil(r)
    }
}
