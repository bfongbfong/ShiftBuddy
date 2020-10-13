//
//  SBButton.swift
//  ShiftBuddy
//
//  Created by John Kim on 10/12/20.
//

import UIKit

class SBButton: UIButton {
    
    func setupStyle() {
        
        backgroundColor = .buttonColor
        backgroundColor     = #colorLiteral(red: 0.9098039216, green: 0.3764705882, blue: 0.2588235294, alpha: 1)
        titleLabel?.font    = UIFont(name: "Montserrat-SemiBold", size: 18)
        layer.cornerRadius  = frame.size.height/3
        setTitleColor(.white, for: .normal)

    }
}
