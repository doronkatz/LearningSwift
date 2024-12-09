import UIKit

// 1. “Encapsulating functionality in object classes”
class Person{
    let firstName: String
    let lastName : String
    var countryOfResidence: String = "UK"
    
    init(firstName: String, lastName: String, countryOfResidence: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.countryOfResidence = countryOfResidence
    }
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
    
    var whereWeMet: String?
    
    override var displayString: String {
        let meetingPlace = whereWeMet ?? "Don't know where we met"
        return "\(super.displayString) - \(meetingPlace)"
    }
    
}

final class Family: Person {
    let relationship: String
    init(firstName: String, lastName: String, relationship: String) {
        self.relationship = relationship
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override displayString: String {
        return "\(super.displayString) - \(relationship)"
    }
}

let steve = Person(firstName: "Steve", lastName: "Paul")
let sam = Family(firstName: "Sam", lastName: "Jones", relationship: "Brother")
sam.whereWeMet = "London"
print(sam.displayString)
print(steve.displayString)
