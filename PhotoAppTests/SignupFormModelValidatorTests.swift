@testable import PhotoApp
import XCTest

final class SignupFormModelValidatorTests: XCTestCase {
    override func setUpWithError() throws {}

    override func tearDownWithError() throws {}

    // Test case 1
    // When an empty first name is provided, the function should return FALSE
    // test method name should start with "test" then the name of the method or class to be tested, then the scenario, then the expected behavior
    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        // Arrange
        let sut = SignupFormModelValidator()

        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Temel")

        // Assert
        // If the condition is TRUE, the test will pass
        // If the condition is FALSE, the test will fail and print the message
        XCTAssertTrue(isFirstNameValid, "Function-isFirstNameValid() should return TRUE but returned FALSE")
    }
}
