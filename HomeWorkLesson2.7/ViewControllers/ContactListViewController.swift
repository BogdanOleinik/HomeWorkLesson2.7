//
//  ContactListViewController.swift
//  HomeWorkLesson2.7
//
//  Created by Богдан Олейник on 21.01.2022.
//

import UIKit

class ContactListViewController: UITableViewController {

    var persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexRow = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! ContactDetailViewController
            detailVC.person = persons[indexRow.row]
        }
    }
}

    







