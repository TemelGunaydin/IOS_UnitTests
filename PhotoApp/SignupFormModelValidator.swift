import Foundation

class SignupFormModelValidator {
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true

        // check if the firstname is shorter than 2 characters.
        if firstName.count < 2 {
            returnValue = false
        }

        return returnValue
    }
}
