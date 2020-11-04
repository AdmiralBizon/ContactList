//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Ilya Klimenyuk on 04.11.2020.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var personPhoneLabel: UILabel!
    @IBOutlet var personEmailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = person.fullName
        
        personPhoneLabel.text = person.phone
        personEmailLabel.text = person.email
        
    }

}
