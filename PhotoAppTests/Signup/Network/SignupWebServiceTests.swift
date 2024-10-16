
import XCTest
@testable import PhotoApp //Should be add as a first step

final class SignupWebServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    //This will fail. Because signup method is empty and does not return "ok"
    func testSignupWebService_WhenGivenSuccessfulResponse_ReturnsSuccess() {
        //Arrange
        // We added urlString for below and provided the urlString
        let sut = SignupWebService(urlString: "https:\\bit.ly\\signup-mock-service-users")
        
        let signFormRequestModel = SignupFormRequestModel(firstName:"Temel",
                                                          lastName:"Gunaydin",
                                                          email:"test@test.com",
                                                          password: "123456")
        //Definition: expectation(description:) is used to define an “expectation” in asynchronous unit tests. An expectation tells the test framework (in this case, XCTest) that there is an asynchronous operation being performed, and the test should wait for that operation to complete before making any assertions.
        let expectation = self.expectation(description: "Signup Web Service Response Expectation")
        
        
        //Act
        sut.signup(withForm: signFormRequestModel) { (signupResponseModel, error) in
        
            //Assert
            //We assume that this response will sent from the server"{\"status"\":\"ok"}"
            XCTAssertEqual(signupResponseModel.status,"ok")
            
     
            //Once the server responds and the assertion XCTAssertEqual(signupResponseModel.status, "ok") passes, expectation.fulfill() is called to indicate that the asynchronous operation is complete, and the test can finish.
            expectation.fulfill()
            
        }
        
        //This line causes the test to wait for up to 5 seconds for the expectation to be fulfilled. If the expectation is fulfilled before the timeout, the test continues; otherwise, it fails due to a timeout.
        self.wait(for: [expectation], timeout: 5)
        
        
    }



}
