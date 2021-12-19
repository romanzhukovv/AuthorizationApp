//
//  AboutMeViewController.swift
//  AuthorizationApp
//
//  Created by Roman Zhukov on 18.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    @IBOutlet var aboutMeLabel: UILabel!
    
    var aboutMe: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let aboutMe = aboutMe {
            aboutMeLabel.text = aboutMe
        }
    }
}
