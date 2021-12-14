//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Roman Zhukov on 14.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let trueUserName = "User"
    private let truePassword = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard userNameTF.text == trueUserName, passwordTF.text == truePassword else {
            showAlert(title: "Oops", message: "Wrong user name or password!")
            return
        }
        
        let welcomeVC = segue.destination as! WelcomeViewController
        
        if let userName = userNameTF.text {
            welcomeVC.userName = userName
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

