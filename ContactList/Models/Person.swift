//
//  Person.swift
//  ContactList
//
//  Created by Никита Тыщенко on 28.02.2024.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let dataStores = DataStore()
        let iteration = dataStores.surname.count
        
        let name = dataStores.name.shuffled()
        let surname = dataStores.surname.shuffled()
        let phone = dataStores.phone.shuffled()
        let email = dataStores.email.shuffled()
        
        for index in 0..<iteration {
            let person = Person(
                name: name[index],
                surname: surname[index],
                phone: phone[index],
                email: email[index]
            )
            persons.append(person)
        }
        return persons
    }
}

