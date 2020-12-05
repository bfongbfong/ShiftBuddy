//
//  SBButton.swift
//  ShiftBuddy
//
//  Created by John Kim on 10/12/20.
//

import UIKit

class SBButton: UIButton {
    
    func setupStyle(_ text: String) {
        backgroundColor = .darkBlue
        titleLabel?.font    = .buttonText
        layer.cornerRadius  = 6
        setTitleColor(.white, for: .normal)
        setTitle(text, for: .normal)
    }
}
