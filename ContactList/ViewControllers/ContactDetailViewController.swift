//
//  ViewController.swift
//  ContactList
//
//  Created by Никита Тыщенко on 28.02.2024.
//

import UIKit

final class ContactDetailViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = "Email: \(person.email)"
        phoneLabel.text = "Phone: \(person.phone)"
        navigationItem.title = person.fullName
    }
}

