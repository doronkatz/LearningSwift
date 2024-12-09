//: [Previous](@previous)

import Foundation

struct PersonName{
    let firstName: String
    let lastName: String
    let middleName: String
    
    func fullName() -> String{
        return "\(firstName) \(middleName) \(lastName)"
    }
    
    // Method to change familyName property. Prefix with mutating keyword
    
    mutating func change(lastName: String){
        self.lastName = lastName
    }
}

var jonathan = PersonName(firstName: "Jonathan", lastName: "Smith", middleName: "")
print(jonathan)

//when we mutate, only that variable is changed
jonathan.change(lastName: "Jones")
print(jonathan)


//: [Next](@next)
