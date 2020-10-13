//
//  SBTextField.swift
//  ShiftBuddy
//
//  Created by Brandon Fong on 10/12/20.
//

import UIKit

class SBTextField: UITextField {
    
    func setupHeaderStyle(text: String) {
        font = .header
        textColor = .mainColor
        self.text = text
    }
}
