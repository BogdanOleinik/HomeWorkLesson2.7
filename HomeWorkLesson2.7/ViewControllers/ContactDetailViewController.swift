//
//  ContactDetailViewController.swift
//  HomeWorkLesson2.7
//
//  Created by Богдан Олейник on 21.01.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
