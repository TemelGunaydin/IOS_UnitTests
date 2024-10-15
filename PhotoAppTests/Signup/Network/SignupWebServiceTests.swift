
import XCTest
@testable import PhotoApp //Should be add as a first step

final class SignupWebServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSignupWebService_WhenGivenSuccessfulResponse_ReturnsSuccess() {
        //Arrange
        let sut = SignupWebService()
        
        let signFormRequestModel = SignupFormRequestModel(firstName:"Temel",
                                                          lastName:"Gunaydin",
                                                          email:"test@test.com",
                                                          password: "123456")
        
        //Act
        sut.signup(withForm: signFormRequestModel) { (signupResponseModel, error) in
                
        }
        
        //Assert
    }



}
