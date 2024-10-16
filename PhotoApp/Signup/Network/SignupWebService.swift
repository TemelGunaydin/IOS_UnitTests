import Foundation

class SignupWebService {
    
    private var urlString : String
    
    init(urlString: String) {
        self.urlString = urlString
    }
    
    func signup(withForm formModel: SignupFormRequestModel,completed: @escaping (SignupResponseModel,SignupErrors)-> Void) {
        guard let url = URL(string: urlString) else {
            //TODO: Create a unit test to test that a specific error message is returned if URL is nil
            return
        }
        
        var request = URLRequest(url: url)
        
        //Configured http request
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type") // this means we are sending json content
        request.setValue("application/json", forHTTPHeaderField: "Accept") // this means we want json as a response
        request.httpBody = try? JSONEncoder().encode(formModel) // our http body that we are sending will be encoded(formModel should be Encodable)
        
        let dataTask = URLSession.shared.dataTask(with: request) { data,response, error in
            
        }
    
        dataTask.resume()
    }
}
