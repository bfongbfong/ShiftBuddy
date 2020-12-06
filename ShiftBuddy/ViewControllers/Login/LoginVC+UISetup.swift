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

        let doctorImageStackView = setupDoctorImageStackView()
        let headersStackView = setupHeadersStackView(doctorImageStackView)
        let textFieldStackView = setupTextFieldStackView(headersStackView)
        let bottomButtonStackView = setupBottomButtonStackView(textFieldStackView)
    }
    
    private func setupDoctorImageStackView() -> UIStackView {
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
        return doctorImageStackView
    }
    
    private func setupHeadersStackView(_ doctorImageStackView: UIStackView) -> UIStackView {
        let headersStackView = UIStackView()
        headersStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(headersStackView)
        
        headersStackView.axis = .vertical
        headersStackView.spacing = 10
        headersStackView.alignment = .center
        
        headersStackView.topAnchor.constraint(equalTo: doctorImageStackView.bottomAnchor, constant: 20).isActive = true
        headersStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let biggestTitleLabel = SBLabel()
        biggestTitleLabel.setupH1(Text.HEADER)
        
        let subtitleLabel = SBLabel()
        subtitleLabel.setupParagraph(Text.BUTTON_SUBTITLE)

        headersStackView.addArrangedSubview(biggestTitleLabel)
        headersStackView.addArrangedSubview(subtitleLabel)
        return headersStackView
    }
    
    private func setupTextFieldStackView(_ headersStackView: UIStackView) -> UIStackView {
        let textFieldStackView = UIStackView()
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(textFieldStackView)
        
        textFieldStackView.axis = .vertical
        textFieldStackView.spacing = 17
        textFieldStackView.alignment = .fill
//        textFieldStackView.distribution = .fill not sure if we need this
        
        textFieldStackView.topAnchor.constraint(equalTo: headersStackView.bottomAnchor, constant: 40).isActive = true
        textFieldStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textFieldStackView.widthAnchor.constraint(equalToConstant: 326).isActive = true
        
        emailTextField.setupStyle(Text.EMAIL_PLACEHOLDER)
        
        passwordTextField.setupStyle(Text.PASSWORD_PLACEHOLDER)
        passwordTextField.isSecureTextEntry = true
        
        textFieldStackView.addArrangedSubview(emailTextField)
        textFieldStackView.addArrangedSubview(passwordTextField)
        return textFieldStackView
    }
    
    private func setupBottomButtonStackView(_ textFieldStackView: UIStackView) -> UIStackView {
        let bottomButtonStackView = UIStackView()
        bottomButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(bottomButtonStackView)
        
        bottomButtonStackView.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 40).isActive = true
        bottomButtonStackView.widthAnchor.constraint(equalToConstant: 326).isActive = true
        bottomButtonStackView.heightAnchor.constraint(equalToConstant: 83).isActive = true
        bottomButtonStackView.centerXAnchor.constraint(equalTo: textFieldStackView.centerXAnchor).isActive = true
        
        bottomButtonStackView.axis = .vertical
        bottomButtonStackView.alignment = .fill
        bottomButtonStackView.spacing = 23
        
        loginButton.setupStyle(Text.LOGIN)
        
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
        return bottomButtonStackView
    }
    
    
    @objc func tapLabel(gesture: UITapGestureRecognizer) {
        let signupRange = (Text.BUTTON_SUBTITLE as NSString).range(of: Text.SIGNUP)
        
        if gesture.didTapAttributedTextInLabel(label: signupLabel, inRange: signupRange) {
            signupTapped()
        }
    }
}
