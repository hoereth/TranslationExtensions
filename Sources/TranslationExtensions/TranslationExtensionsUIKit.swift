//
//  TranslationExtensions.swift
//  CookTime
//
//  Created by Mick on 04.01.20.
//  Copyright © 2020 Pentabyte. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController: Translatable {
    public func translateButton(_ button:UIButton) {
        button.setTitle(self.translateKey(button.titleLabel?.text ?? "please set title"), for: .normal);
    }
    
    public func translateLabel(_ label:UILabel) {
        label.text = self.translateKey(label.text ?? "please set text")
    }
    
    public func translateTextField(_ textField:UITextField) {
        if let placeholder = textField.placeholder {
            textField.placeholder = self.translateKey(placeholder)
        }
    }
    
    public func translateTitle() {
        self.title = self.translateKey("title")
    }
}
