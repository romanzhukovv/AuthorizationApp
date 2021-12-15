//
//  WelcomeViewController.swift
//  AuthorizationApp
//
//  Created by Roman Zhukov on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let userName = userName {
            welcomeLabel.text?.append(userName)
        }
    }
    
}
