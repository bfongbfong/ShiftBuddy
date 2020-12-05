//
//  SBLabel.swift
//  ShiftBuddy
//
//  Created by Brandon Fong on 12/4/20.
//

import UIKit

class SBLabel: UILabel {
    
    func setupH1(_ text: String) {
        self.font = .header
        self.textColor = .darkText
        self.text = text
    }
    
    func setupParagraph(_ text: String) {
        self.font = .paragraph
        self.textColor = .lighterText
        self.text = text
    }
    
    func setupSubtitle(_ text: String) {
        self.font = .subtitle
        self.textColor = .darkBlue
        self.text = text
    }
}
