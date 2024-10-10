import Foundation

class SignupFormModelValidator {
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true

        if firstName.isEmpty {
            returnValue = false
        }

        return returnValue
    }
}
