//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Ilya Klimenyuk on 04.11.2020.
//

import UIKit

class ContactListViewController: UITableViewController {

    var contacts: [Person]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)

        var defaultContentConfiguration = cell.defaultContentConfiguration()
        defaultContentConfiguration.text = contacts[indexPath.row].fullName
        cell.contentConfiguration = defaultContentConfiguration

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personDetailsVS = segue.destination as! PersonDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personDetailsVS.person = contacts[indexPath.row]
    }
    

}
