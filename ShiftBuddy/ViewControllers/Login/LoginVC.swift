//
//  LoginViewController.swift
//  ShiftBuddy
//
//  Created by Brandon Fong on 10/12/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: More Meta UI Objects
    let containerView = UIView()
    let doctorImageStackView = UIStackView()
    let headersStackView = UIStackView()
    let textFieldStackView = UIStackView()
    let bottomButtonStackView = UIStackView()

    // MARK: - UI Objects
    let emailTextField = SBTextField()
    let passwordTextField = SBTextField()
    let loginButton = SBButton()
    let signupLabel = SBLabel()
        
    // MARK: - Text Strings
    struct Text {
        static let HEADER = "Shift Buddy"
        static let SUBTITLE = "Schedule and trade shifts with colleagues"
        static let EMAIL_PLACEHOLDER = "Enter Email"
        static let PASSWORD_PLACEHOLDER = "Enter password"
        static let LOGIN = "Log In"
        static let BUTTON_SUBTITLE = "Don't have an account yet? Sign up"
        static let SIGNUP = "Sign up"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        dismissInputWhenTappedAround()
    }
    
    deinit {
      NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - User Interactions
    func signupTapped() {
        print("signup tapped")
    }
    
    @objc func loginTapped() {
        print("login tapped")
        let createAccountVC = CreateAccountViewController()
        createAccountVC.modalPresentationStyle = .overFullScreen
        self.present(createAccountVC, animated: true, completion: nil)
    }
}

