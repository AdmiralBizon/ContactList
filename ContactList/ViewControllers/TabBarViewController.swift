//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Ilya Klimenyuk on 04.11.2020.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        let contactListVC = viewControllers?.first as! ContactListViewController
        let contactListWithDetailsVS = viewControllers?.last as! ContactListWithDetailsViewController
        
        contactListVC.contacts = persons
        contactListWithDetailsVS.contacts = persons
    }
}
