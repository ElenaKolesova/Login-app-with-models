//
//  ViewController.swift
//  Login2
//
//  Created by Elena Kolesova on 06.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private properties
    private let user = "Elena"
    private let password = "Password"

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
        if loginTextField.text != user || passwordTextField.text != password {
            showAlert(title: "Invalig login or passwprd",
                      message: "Try again or use your hints",
                      textField: passwordTextField)
        }
        return
    }
    
    @IBAction func forgotLoginAction(_ sender: Any) {
        showAlert(title: "Wrong login", message: "Forgot your login? Use \(user)")
    }
    @IBAction func forgotPasswordAction(_ sender: Any) {
        showAlert(title: "Wrong password", message: "Forgot your password? Use \(password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


