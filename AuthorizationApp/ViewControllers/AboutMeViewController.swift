//
//  AboutMeViewController.swift
//  AuthorizationApp
//
//  Created by Roman Zhukov on 18.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    @IBOutlet var aboutMeLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "\(user.person.name) \(user.person.surname)"
        
        aboutMeLabel.text = "My name is \(user.person.name) \(user.person.surname). I'm \(user.person.age) years old. My profission is \(user.person.job), and it is impressive. I live in \(user.person.location). I like \(user.person.hobby)."
    }
}
