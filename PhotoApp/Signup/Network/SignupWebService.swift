import Foundation

class SignupWebService {
    
    private var urlString : String
    
    init(urlString: String) {
        self.urlString = urlString
    }
    
    func signup(withForm formModel: SignupFormRequestModel,completed: @escaping (SignupResponseModel,SignupErrors)-> Void) {
        
    }
}
