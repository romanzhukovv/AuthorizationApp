//
//  WelcomeViewController.swift
//  AuthorizationApp
//
//  Created by Roman Zhukov on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var avatarLabel: UILabel!
    
    var userName: String?
    var userAvatar: Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let userName = userName, let userAvatar = userAvatar {
            welcomeLabel.text?.append(userName)
            avatarLabel.text = String(userAvatar)
        }
    }
}
