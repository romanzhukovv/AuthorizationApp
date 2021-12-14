//
//  WelcomeViewController.swift
//  AuthorizationApp
//
//  Created by Roman Zhukov on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        welcomeLabel.text! += userName
    }
    
}
