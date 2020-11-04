//
//  ContactListWithDetailsViewController.swift
//  ContactList
//
//  Created by Ilya Klimenyuk on 04.11.2020.
//

import UIKit

class ContactListWithDetailsViewController: UITableViewController {

    var contacts: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = contacts[indexPath.section]
        
        var defaultContentConfiguration = cell.defaultContentConfiguration()
        defaultContentConfiguration.text = indexPath.row == 0 ?
            person.phone : person.email
        defaultContentConfiguration.image = indexPath.row == 0 ?
            UIImage(systemName: "phone") : UIImage(systemName: "tray")
        cell.contentConfiguration = defaultContentConfiguration

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
