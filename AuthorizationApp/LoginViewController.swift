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
        
        userNameTF.autocorrectionType = .no
        userNameTF.spellCheckingType = .no
        
        passwordTF.autocorrectionType = .no
        passwordTF.spellCheckingType = .no
        passwordTF.isSecureTextEntry = true
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard userNameTF.text == trueUserName, passwordTF.text == truePassword else {
            showAlert(title: "Error", message: "Wrong user name or password!")
            return
        }
        
        let welcomeVC = segue.destination as! WelcomeViewController
        
        if let userName = userNameTF.text {
            welcomeVC.userName = userName
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    
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

