@testable import PhotoApp
import XCTest

final class SignupFormModelValidatorTests: XCTestCase {
    var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        // Initialize the sut
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Deinitialize the sut
        // This is important to avoid memory leaks
        // This method run after each test method
        sut = nil
    }

    // Test case 1
    // When an empty first name is provided, the function should return FALSE
    // test method name should start with "test" then the name of the method or class to be tested, then the scenario, then the expected behavior
    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Temel")

        // Assert
        // If the condition is TRUE, the test will pass
        // If the condition is FALSE, the test will fail and print the message
        XCTAssertTrue(isFirstNameValid, "Function-isFirstNameValid() should return TRUE but returned FALSE")
    }

    // Test case 2
    // When a short first name is provided, the function should return FALSE
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "T")

        // Assert
        // If the condition is TRUE, the test will pass
        // If the condition is FALSE, the test will fail and print the message
        XCTAssertFalse(isFirstNameValid, "Function-isFirstNameValid() should return FALSE but returned TRUE")
    }
}
