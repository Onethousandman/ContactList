//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Никита Тыщенко on 28.02.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {

    private let person = Person.getPersons()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailInformationVC = segue.destination as? ContactDetailViewController
        detailInformationVC?.person = person[indexPath.row]
    }
}

//MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = person[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
}

