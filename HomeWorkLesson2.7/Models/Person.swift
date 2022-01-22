//
//  Person.swift
//  HomeWorkLesson2.7
//
//  Created by Богдан Олейник on 21.01.2022.
//

import Foundation


struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.info.names.shuffled()
        let surnames = DataManager.info.surname.shuffled()
        let emails = DataManager.info.emails.shuffled()
        let phones = DataManager.info.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
