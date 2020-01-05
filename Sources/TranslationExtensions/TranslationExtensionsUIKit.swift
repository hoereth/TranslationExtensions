//
//  TranslationExtensions.swift
//  CookTime
//
//  Created by Mick on 04.01.20.
//  Copyright © 2020 Pentabyte. All rights reserved.
//

import Foundation
import UIKit

extension UIButton: Translatable {
    public func translateTitle() {
        self.setTitle(self.translateKey(self.titleLabel?.text ?? "please set title"), for: .normal);
    }
}

extension UILabel: Translatable {
    public func translateText() {
        self.text = self.translateKey(self.text ?? "please set text")
    }
}
 
extension UITextField: Translatable {
    public func translatePlaceholder() {
        if let placeholder = self.placeholder {
            self.placeholder = self.translateKey(placeholder)
        }
    }
}
    
extension UIViewController: Translatable {
    public func translateTitle() {
        self.title = self.translateKey("title")
    }
}
