//
//  TabBarViewController.swift
//  HomeWorkLesson2.7
//
//  Created by Богдан Олейник on 22.01.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList()
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let infoVC = viewControllers?.last as? InfoListViewController else { return }
       
        contactListVC.persons = persons
        infoVC.persons = persons
    }
}
