//
//  LoginVC+UISetup.swift
//  ShiftBuddy
//
//  Created by Brandon Fong on 12/6/20.
//

import UIKit

extension LoginViewController {

    func setupUI() {
        self.view.backgroundColor = .white
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(containerView)
        
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: 0.0).isActive = true

        setupDoctorImageStackView()
        setupHeadersStackView(doctorImageStackView)
        setupTextFieldStackView(headersStackView)
        setupBottomButtonStackView(textFieldStackView)
    }
    
    private func setupDoctorImageStackView() {
        doctorImageStackView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(doctorImageStackView)

        doctorImageStackView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        NSLayoutConstraint(item: doctorImageStackView, attribute: .centerY, relatedBy: .equal, toItem: containerView, attribute: .centerY, multiplier: 0.5, constant: 0.0).isActive = true
        
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
    }
    
    private func setupHeadersStackView(_ doctorImageStackView: UIStackView) {
        headersStackView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(headersStackView)
        
        headersStackView.axis = .vertical
        headersStackView.spacing = 10
        headersStackView.alignment = .center
        
        headersStackView.topAnchor.constraint(equalTo: doctorImageStackView.bottomAnchor, constant: 20).isActive = true
        headersStackView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        
        let biggestTitleLabel = SBLabel()
        biggestTitleLabel.setupH1(Text.HEADER)
        
        let subtitleLabel = SBLabel()
        subtitleLabel.setupParagraph(Text.BUTTON_SUBTITLE)

        headersStackView.addArrangedSubview(biggestTitleLabel)
        headersStackView.addArrangedSubview(subtitleLabel)
    }
    
    private func setupTextFieldStackView(_ headersStackView: UIStackView) {
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(textFieldStackView)
        
        textFieldStackView.axis = .vertical
        textFieldStackView.spacing = 17
        textFieldStackView.alignment = .fill
//        textFieldStackView.distribution = .fill not sure if we need this
        
        textFieldStackView.topAnchor.constraint(equalTo: headersStackView.bottomAnchor, constant: 40).isActive = true
        textFieldStackView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        textFieldStackView.widthAnchor.constraint(equalToConstant: 326).isActive = true
        
        emailTextField.setupStyle(Text.EMAIL_PLACEHOLDER)
        
        passwordTextField.setupStyle(Text.PASSWORD_PLACEHOLDER)
        passwordTextField.isSecureTextEntry = true
        
        textFieldStackView.addArrangedSubview(emailTextField)
        textFieldStackView.addArrangedSubview(passwordTextField)
    }
    
    private func setupBottomButtonStackView(_ textFieldStackView: UIStackView) {
        bottomButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(bottomButtonStackView)
        
        bottomButtonStackView.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 40).isActive = true
        bottomButtonStackView.widthAnchor.constraint(equalToConstant: 326).isActive = true
        bottomButtonStackView.heightAnchor.constraint(equalToConstant: 83).isActive = true
        bottomButtonStackView.centerXAnchor.constraint(equalTo: textFieldStackView.centerXAnchor).isActive = true
        
        bottomButtonStackView.axis = .vertical
        bottomButtonStackView.alignment = .fill
        bottomButtonStackView.spacing = 23
        
        loginButton.setupStyle(Text.LOGIN)
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        
        signupLabel.setupSubtitle(Text.BUTTON_SUBTITLE)
        signupLabel.textAlignment = .center
        
        let underlineAttriString = NSMutableAttributedString(string: Text.BUTTON_SUBTITLE)
        let range1 = (Text.BUTTON_SUBTITLE as NSString).range(of: Text.SIGNUP)
        underlineAttriString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemBlue, range: range1)
        signupLabel.attributedText = underlineAttriString
        signupLabel.isUserInteractionEnabled = true
        signupLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapLabel(gesture:))))
        
        bottomButtonStackView.addArrangedSubview(loginButton)
        bottomButtonStackView.addArrangedSubview(signupLabel)
        
        bottomButtonStackView.isUserInteractionEnabled = true
    }
    
    
    @objc func tapLabel(gesture: UITapGestureRecognizer) {
        let signupRange = (Text.BUTTON_SUBTITLE as NSString).range(of: Text.SIGNUP)
        
        if gesture.didTapAttributedTextInLabel(label: signupLabel, inRange: signupRange) {
            signupTapped()
        }
    }
}
