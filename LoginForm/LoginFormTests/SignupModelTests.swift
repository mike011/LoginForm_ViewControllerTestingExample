import XCTest

class SignupModelTests: XCTestCase {

    let validUserName = "Valid"

    func testInit_valid_returnsObject() {
        let r = SignupModel(userName: validUserName)
        XCTAssertNotNil(r)
        XCTAssertEqual(r!.userName, validUserName)
    }

    func testUserName_tooShort_returnsNil() {
        let r = SignupModel(userName: "")
        XCTAssertNil(r)
    }

    func testUserName_tooLong_returnsNil() {
        let r = SignupModel(userName: "12345678901")
        XCTAssertNil(r)
    }

    func testUserName_underScoreIsAllowed_returnsObject() {
        let r = SignupModel(userName: "___")
        XCTAssertNotNil(r)
    }

    func testUserName_specialCharactersAreNotAllowed_returnsNil() {
        let r = SignupModel(userName: "♥♥♥")
        XCTAssertNil(r)
    }
}
