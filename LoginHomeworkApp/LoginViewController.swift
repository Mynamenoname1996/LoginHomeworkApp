//
//  LoginViewController.swift
//  LoginHomeworkApp
//
//  Created by Gregory Odintsov on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let myLogin = "User"
    let myPassword = "1234"

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.hiLabel = userNameTF.text
        if userNameTF.text == myLogin || passwordTF.text == myPassword {
            welcomeVC.hiLabel = "Hello, \(myLogin)! ✋🏻"
        }
    }

    @IBAction func loginButtonPressed() {
        guard let inputText = userNameTF.text, !inputText.isEmpty else {
            showAlert(with: "Ooops!", and: "Wrong format")
            return
        }
        if userNameTF.text != myLogin {
        showAlert(with: "Ooops!", and: "Wrong username or password!")
        }
        

    }
    
    @IBAction func forgotUNButtonPressed() {
        showAlert(with: "Ooops!", and: "Your username is '\(myLogin)'")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oooops!", and: "Your password is '\(myPassword)'")
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and massege: String) {
        let alert = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
