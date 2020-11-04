//
//  Person.swift
//  ContactList
//
//  Created by Ilya Klimenyuk on 04.11.2020.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
   
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Person {
    static func getContactList() -> [Person] {
            
        var persons: [Person] = []
        
        let personDataManager = PersonDataManager()
        
        for name in personDataManager.names {
            let newPerson = Person(name: name,
                                   surname: personDataManager.surnames
                                    .randomElement() ?? "",
                                   email: personDataManager.emails
                                    .randomElement() ?? "",
                                   phone: personDataManager.phones
                                    .randomElement() ?? "")
            
            var uniquePerson = true
            
            for person in persons {
                if person.surname == newPerson.surname
                    || person.email == newPerson.email
                    || person.phone == newPerson.phone {
                    uniquePerson = false
                    break;
                }
            }
            
            if uniquePerson {
                persons.append(newPerson)
            }
            
        }
        
        return persons
        
    }
}

struct PersonDataManager {
    let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
    let emails = ["aaa@example.com",
                  "bbb@example.com",
                  "ccc@example.com",
                  "ddd@example.com",
                  "eee@example.com"]
    let phones = ["+1 (432) 349-85-74",
                  "+2 (123) 456-90-18",
                  "+3 (456) 031-07-35",
                  "+4 (238) 940-15-50",
                  "+5 (129) 075-64-79"]
    
}
