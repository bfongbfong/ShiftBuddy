//
//  LoginViewController.swift
//  ShiftBuddy
//
//  Created by Brandon Fong on 10/12/20.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        self.view.backgroundColor = .white

        let doctorImageStackView = UIStackView()
        doctorImageStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(doctorImageStackView)

        doctorImageStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        NSLayoutConstraint(item: doctorImageStackView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 0.5, constant: 0.0).isActive = true
        
        let womanDoctorImageView = UIImageView()
        womanDoctorImageView.image = UIImage(named: "icons-images-doctor-woman")
        let manDoctorImageView = UIImageView()
        manDoctorImageView.image = UIImage(named: "icons-images-doctor-man")
        
        doctorImageStackView.alignment = .center
        doctorImageStackView.distribution = .equalCentering
        doctorImageStackView.axis = .horizontal
        doctorImageStackView.spacing = 20
        
        doctorImageStackView.addArrangedSubview(womanDoctorImageView)
        doctorImageStackView.addArrangedSubview(manDoctorImageView)
        
        
        
        let headersStackView = UIStackView()
        headersStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(headersStackView)
        
        headersStackView.axis = .vertical
        headersStackView.spacing = 10
        headersStackView.alignment = .center
        
        headersStackView.topAnchor.constraint(equalTo: doctorImageStackView.bottomAnchor, constant: 20).isActive = true
        headersStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let biggestTitleLabel = SBLabel()
        biggestTitleLabel.setupH1("Shift Buddy")
        
        let subtitleLabel = SBLabel()
        subtitleLabel.setupParagraph("Schedule and trade shifts with colleagues")

        headersStackView.addArrangedSubview(biggestTitleLabel)
        headersStackView.addArrangedSubview(subtitleLabel)
        
        
        
        let textFieldStackView = UIStackView()
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(textFieldStackView)
        
        textFieldStackView.axis = .vertical
        textFieldStackView.spacing = 17
        textFieldStackView.alignment = .fill
//        textFieldStackView.distribution = .fill
        
        textFieldStackView.topAnchor.constraint(equalTo: headersStackView.bottomAnchor, constant: 40).isActive = true
        textFieldStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textFieldStackView.widthAnchor.constraint(equalToConstant: 326).isActive = true
        
        
        let emailTextField = SBTextField()
        emailTextField.setupStyle("Enter your Email")
        
        let passwordTextField = SBTextField()
        passwordTextField.setupStyle("Enter Password")
        passwordTextField.isSecureTextEntry = true
        
        textFieldStackView.addArrangedSubview(emailTextField)
        textFieldStackView.addArrangedSubview(passwordTextField)
        
                
        let bottomButtonStackView = UIStackView()
        bottomButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        textFieldStackView.addSubview(bottomButtonStackView)
        
        bottomButtonStackView.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 40).isActive = true
        bottomButtonStackView.widthAnchor.constraint(equalToConstant: 326).isActive = true
        bottomButtonStackView.heightAnchor.constraint(equalToConstant: 83).isActive = true
        bottomButtonStackView.centerXAnchor.constraint(equalTo: textFieldStackView.centerXAnchor).isActive = true
        
        bottomButtonStackView.axis = .vertical
        bottomButtonStackView.alignment = .fill
        bottomButtonStackView.spacing = 23
        
        let loginButton = SBButton()
        loginButton.setupStyle("Log In")
        
        let signupLabel = SBLabel()
        signupLabel.setupSubtitle("Don't have an account yet? Sign up")
        signupLabel.textAlignment = .center
        
        bottomButtonStackView.addArrangedSubview(loginButton)
        bottomButtonStackView.addArrangedSubview(signupLabel)
    }
}

