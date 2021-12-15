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
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let trueUserName = "User"
    private let truePassword = "12345"
    
    override func viewWillLayoutSubviews() {
        fillGradient(colorOne: UIColor.systemOrange, colorTwo: UIColor.systemPurple)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        
        if let userName = userNameTF.text {
            welcomeVC.userName = userName
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func buttonsAction(_ sender: UIButton) {
        switch sender {
        case forgotUserNameButton:
            showAlert(title: "Your user name", message: "User")
        case forgotPasswordButton:
            showAlert(title: "Your password", message: "12345")
        default:
            guard userNameTF.text == trueUserName, passwordTF.text == truePassword else {
                showAlert(title: "Error", message: "Wrong user name or password!")
                return
            }
            performSegue(withIdentifier: "toWelcomeVC", sender: nil)
        }
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
    
    private func fillGradient(colorOne: UIColor, colorTwo: UIColor) {
        let gradiendLayer = CAGradientLayer()
        gradiendLayer.frame = view.bounds
        gradiendLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        view.layer.insertSublayer(gradiendLayer, at: 0)
    }
}

