//
//  SBTextField.swift
//  ShiftBuddy
//
//  Created by Brandon Fong on 10/12/20.
//

import UIKit

class SBTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 9, left: 18, bottom: 13, right: 18)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    func setupStyle(_ placeholderText: String?) {
        font = .textField
        textColor = .fieldColor
        autocorrectionType    = .no
        clipsToBounds         = true
        backgroundColor = .white
        
        let placeholder       = placeholderText ?? ""
        let placeholderFont   = UIFont.textField
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes:
            [NSAttributedString.Key.foregroundColor: UIColor.placeholderText,
             NSAttributedString.Key.font: placeholderFont])
        textAlignment = .left
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.grayBorder.cgColor
        layer.cornerRadius = 6
    }
}
