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
        let contactListVC = viewControllers?.first as! ContactListViewController
        let infoVC = viewControllers?.last as! InfoListViewController
       
        contactListVC.persons = persons
        infoVC.persons = persons
    }
}
