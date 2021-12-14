//
//  WelcomeViewController.swift
//  AuthorizationApp
//
//  Created by Roman Zhukov on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logOutActrion(_ sender: Any) {
        dismiss(animated: true)
    }
}
