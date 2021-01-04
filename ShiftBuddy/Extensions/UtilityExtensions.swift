//
//  UtilityExtensions.swift
//  ShiftBuddy
//
//  Created by Brandon Fong on 12/23/20.
//

import UIKit

extension UIViewController {
    func dismissInputWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(dismissInput))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
    }

    @objc func dismissInput() {
        view.endEditing(true)
    }
}


