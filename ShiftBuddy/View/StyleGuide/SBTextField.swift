//
//  SBTextField.swift
//  ShiftBuddy
//
//  Created by Brandon Fong on 10/12/20.
//

import UIKit

class SBTextField: UITextField {
    
    func setupStyle(text: String) {
        font = .textField
        textColor = .fieldColor
        self.text = text
        autocorrectionType    = .no
        layer.cornerRadius    = frame.size.height/3
        clipsToBounds         = true
        
        let placeholder       = self.placeholder != nil ? self.placeholder! : ""
        let placeholderFont   = UIFont.textField
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes:
            [NSAttributedString.Key.foregroundColor: UIColor.lightGray,
             NSAttributedString.Key.font: placeholderFont])
    
    }
}
